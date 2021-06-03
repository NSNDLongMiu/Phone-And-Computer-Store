<?php
$loadHelper = [
    'Session',
    'Auth',
    'DB',
    'Function',
    'Input',
    'Pagination',
    'Redirect',
    // 'Upload',
    'Validator'
];

$posUrl =  strpos("http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]", 'admin');

if ($posUrl != null) {
    require_once('../../config/Config.php');
    //require_once('../../vendor/autoload.php');

    foreach ($loadHelper as $item) {
        require_once("../../helper/$item.php");
    }
} else {
    require_once('./config/Config.php');
    foreach ($loadHelper as $item) {
        require_once("./helper/$item.php");
    }
}

$DB = new DB();

$cart = Session::get('cart');

$total = 0;
$countProduct = 0;

if (is_array($cart)) {
    foreach ($cart as $item) {
        $total += $item->so_luong_mua * $item->giaban;

        $countProduct++;
    }
}

if (Input::post('checkout')) {
    if (Auth::customer()) {
        $DB->update(
            'khachhang',
            [
                'phone'  => Input::post('phone'),
                'diachi' => Input::post('diachi')
            ],
            Auth::customer()->id
        );

        $don_hang = [
            'tongtien'     => $total,
            'khachhang_id' => Auth::customer()->id,
            'trangthai'    => 0,
        ];
    } else {
        $khachhang = [

            'hoten'  => Input::post('hoten'),
            'phone'  => Input::post('phone'),
            'email'  => Input::post('email'),
            'diachi' => Input::post('diachi'),
            'note'   => Input::post('note'),
            'avatar' => 'employee-avatar.png'
        ];

        $DB->create('khachhang', $khachhang);

        $idKhachhang = $DB->getInsertID();

        $don_hang = [
            'tongtien'  => $total,
            'khachhang_id'  => $idKhachhang,
            'trangthai' => 0,
        ];
    }


    $created = $DB->create('donhang', $don_hang);

    if ($created) {
        $idDonHang = $DB->getInsertID();
        
        foreach ($_SESSION['cart'] as $product) {
            $chi_tiet = [
                'sanpham_id' => $product->id,
                'donhang_id' => $idDonHang,
                'soluongmua' => $product->so_luong_mua,
                'sale'       => $product->sale,
            ];
            $created = $DB->create('chitietdonhang', $chi_tiet);
            if ($created) {
                $_SESSION['thong_bao'] = true;
                unset($_SESSION['cart']);
                header('location: checkout_success.php');
            } else {
                $_SESSION['thong_bao'] = false;
                header('location: checkout_success.php');
            }
        }   
    }
}



$title = "Thanh toán";


require_once('./layouts/pageTQT/header.php');


?>

<div id="mainCheckout">
    <form name="checkout" method="post" class="" enctype="multipart/form-data">
        <?php if (Auth::customer()) : ?> 
            <div class = "top-checkout">
                <div class = "info-checkout">
                    <p>Nhập địa chỉ nhận hàng *</p> <br>
                    <input type="text" required class="input-text " value="" placeholder="" name="diachi" id="billing_state" autocomplete="address-level1" data-input-classes="" />                                      
                </div>
                <div class = "info-add">
                    <h3>Thông tin bổ sung</h3>
                    <p>Ghi chú</p>
                    <textarea name="" id="" cols="50" rows="10"></textarea>
                </div>
            </div>    
        <?php else : ?>
            <div class = "top-checkout">
                <div class = "info-checkout">
                    <h3>Nhập thông tin của bạn</h3>
                    <p>Họ tên *</p>
                    <input type="text" required class="input-text " name="hoten" id="billing_last_name" placeholder="" value="" autocomplete="family-name" />             
                    <p>Địa chỉ *</p>
                    <input type="text" required class="input-text " value="" placeholder="" name="diachi" id="billing_state" autocomplete="address-level1" data-input-classes="" />                  
                    <p>Số điện thoại *</p>
                    <input type="tel" required class="input-text " name="phone" id="billing_phone" placeholder="" value="" autocomplete="tel" />                    
                    <p>Email *</p>
                    <input type="email" required class="input-text " name="email" id="billing_email" placeholder="" value="" autocomplete="email username" />             
                </div>
                <div class = "info-add">
                    <h3>Thông tin bổ sung</h3>
                    <p>Ghi chú</p>
                    <textarea name="" id="" cols="50" rows="10"></textarea>
                </div>
            </div>
        <?php endif ?>
        <?php if (is_array($cart)) : ?>
            <div id="order_review">
                <table>
                    <thead>
                        <tr>
                            <th style = "float: left">Sản phẩm</th>
                            <th style ="position: relative; left: 20px">Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($cart as $item) : ?>
                        <tr>
                            <td>
                                <?= $item->tensanpham ?> &nbsp; <strong>&times;&nbsp;<?= $item->so_luong_mua ?></strong> </td>
                            <td>
                                <span style = "float: right"><?= number_format($item->giaban * $item->so_luong_mua) . ' vnđ'  ?></span> </td>
                        </tr>
                    <?php endforeach ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th style = "float: left">Tổng tiền</th>
                            <td><strong><span style = "float: right"><?= number_format($total) . ' vnđ'  ?></span></strong> </td>
                        </tr>
                    </tfoot>
                </table>
                <div id="payment">
                    <button type="submit" class="" name="checkout" id="place_order" value="Place order" data-value="Place order">Đặt hàng</button>
                </div>
            </div>
                <?php else : ?>
                    <h2 style="height: 40vh; margin-left: 10%">Đơn hàng của bạn chưa có sản phẩm nào !</h2>
                <?php endif ?>
    </form>
</div>

<?php require_once('./layouts/pageTQT/footer.php') ?>

