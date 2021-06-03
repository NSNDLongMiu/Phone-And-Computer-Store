<?php
    require_once('./autoload/Autoload.php');
    
    if (Input::post('register')) {
        $sql = "Select * FROM  khachhang WHERE email = '" . Input::post('email') . '\'';
        $isSetEmail = $DB->query($sql);

        if (!is_array($isSetEmail)) {
            $created = $DB->create('khachhang', [
            'email'    => Input::post('email'),
            'password' => md5(Input::post('password')),
            'avatar'   => 'employee-avatar.png',            
            'hoten'    => Input::post('hoten'),
            'phone'    => Input::post('phone'),
            // 'diachi' => Input::post('diachi'),
            'diachi' => '',
            'note' => '',
            // 'create_at' => 'YYYY-MM-DD HH: MM: SS',
            // cho dia chi = "" tren nay
        ]);
            if ($created) {
                $success = 'Đăng ký tài khoản thành công';
                //header('location: http://localhost:8080/WebAdvance/Phone-And-Computer-Store/login.php');
                Redirect::url("login.php");
            } else {
                $error = 'Đăng ký tài khoản không thành công, vui lòng thử lại';
            }
        } else {
            $error = "Email đã tồn tại vui lòng sử dụng email khác";
        }
    }


$title = "Đăng ký tài khoản thành viên";
require_once('./layouts/pageTQT/header.php');

?>

<div id="main">
    <form name = "formRegister" id = "formRegister" method = "POST" action = "register.php">
        <h2>Đăng ký</h2>  <br>  
        <?php if (isset($success)) : ?>
            
            <div class="alert alert-success" style="margin-bottom:20px; padding:15px; color:#155724;background-color: #d4edda; border-color: #c3e6cb; ">
                <?= $success ?>
            </div>
        <?php endif ?>
        <?php if (isset($error)) : ?>
            <div class="alert alert-danger" style="margin-bottom:20px; padding:15px; color:#721c24;background-color: #f8d7da; border-color: #f5c6cb; ">
                <?= $error ?>
            </div>
        <?php endif ?> 
        Email * <br>
        <input  class = "nhap" name = "email" id = "username" type="text"><br><br>
        Mật khẩu * <br>
        <input  class = "nhap" type="password" name="password" id="password"><br><br>
        Họ tên * <br>
        <input  class = "nhap" type="text" name="hoten" id="hoten"><br><br>
        <!-- <p>Địa chỉ *</p>
        // Bo dia chi o day di
        <input type="text" required class="nhap" value="" placeholder="" name="diachi" id="billing_state" autocomplete="address-level1" data-input-classes="" /><br><br> -->
        Điện thoại * <br>
        <input  class = "nhap" type="text" name="phone" id="phone"><br><br>
        <input  class = "btn" type="submit" value="Đăng ký" name = "register">       
    </form>
</div>
<?php require_once('./layouts/pageTQT/footer.php'); ?>