<?php
    require_once('./autoload/Autoload.php');
    $title = "Giỏ hàng";
    require_once('./layouts/pageTQT/header.php');
?>
<div id="mainCart">
    <?php if (is_array($cart)) : ?>
        <form action="<?= url('update-cart.php') ?>" method = "post">
            <table id = "tb1">
                <thead >
                    <tr >
                        <th class="product-remove">&nbsp;</th>
                        <th class="product-thumbnail">&nbsp;</th>
                        <th class="product">Sản phẩm</th>
                        <th class="product">Giá bán</th>
                        <th class="product">Số lượng</th>
                        <th class="product">Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($cart as $item) : ?>
                        <tr>
                            <td class="">
                                <a href="remove-product.php?id=<?= $item->id ?>">&times;</a> 
                            </td>
                            <td class="">
                                <a href="<?= url('product-detail.php?id=' . $item->id) ?>"><img width="50" height="50" src="<?= BASE_URL . '/' . $item->hinhanh ?>"   <?= BASE_URL . '/' . $item->hinhanh ?> sizes="(max-width: 540px) 100vw, 540px" /></a> 
                            </td>
                            <td class="cart1">
                                <a href="<?= url('product-detail.php?id=' . $item->id) ?>"><?= $item->tensanpham ?></a> 
                            </td>
                            <td class="">
                                <span><?= number_format($item->giaban) . ' vnđ'  ?></span> 
                            </td>
                            <td class="quantity">
                                <div class="number">
                                    <label class="" for="quantity_5ef2ea9d0f8dd" style = "visibility: hidden;"><?= $item->tensanpham ?></label>
                                    <input type="number" id="quantity_5ef2ea9d0f8dd" class="count" step="1" min="0" max="" name="<?= $item->id ?>" value="<?= $item->so_luong_mua ?>" inputmode="numeric" />
                                </div>
                            </td>
                            <td class="">
                                <span><?= number_format($item->giaban * $item->so_luong_mua) . ' vnđ'  ?></span> 
                            </td>
                        </tr>
                    <?php endforeach ?>
                    <tr>
                        <td colspan="6" class="">                                   
                            <button type="submit" class="button" name="update-cart" value="Update cart">Cập nhật giỏ hàng</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <div class="bill">
            <h2>Hóa đơn</h2>
            <table>
                <tr>
                    <th style = "float: left;">Tổng tiền</th>
                    <td><span style = "float: right;"><?= number_format($total) . ' vnđ' ?></span></td>
                </tr>
                <tr class="order-total">
                    <th style = "float: left;">Phí ship</th>
                    <td ><span style = "float: right;">Miễn phí</span></td>
                </tr>
                <tr class="order-total">
                    <th style = "float: left;">Thành tiền</th>
                    <td ><span style = "float: right;"><?= number_format($total) . ' vnđ'  ?></span> </td>
                </tr>            
            </table>
            <div class="btn-checkout">
                <a href="<?= url('checkout.php') ?>" class="">Thanh toán</a>
            </div>
        </div>
    <?php else : ?>
        <h2 class = "empty">Giỏ hàng của bạn chưa có sản phẩm nào !</h2>
    <?php endif ?>

</div>


<a href="javascript:void(0)" id="slide_top" class="cmsmasters_theme_icon_slide_top"><span></span></a>
</div>

<?php require_once('./layouts/pageTQT/footer.php'); ?>
