<?php 
    require_once('./autoload/Autoload.php');
   
    if (Input::hasPost('login')) {
    
        $email = Input::post('email');
        $password = md5(Input::post('password'));
    
    
        $sql = "SELECT * FROM khachhang WHERE email = '$email' && password = '$password'";
    
        $data = $DB->query($sql);
    
        if (is_array($data)) {
    
            Session::put('customer', $data);
            Redirect::url('');
        }
    
        $error = "Sai tên đăng nhập hoặc mật khẩu";
    }
    $title = "Đăng nhập";
    require_once('./layouts/pageTQT/header.php');
    
?>

<div id = "main">
    <form name = "formLogin" id = "formLogin" method = "POST" action = "login.php">
        <?php if (isset($error)) : ?>
            <div class="alert alert-danger" style="margin-bottom:20px; padding:15px; color:#721c24;background-color: #f8d7da; border-color: #f5c6cb; ">
                <?= $error ?>
            </div>
        <?php endif ?>
        <h2>Đăng nhập</h2>  <br>   
        Email * <br>
        <input  class = "nhap" name = "email" id = "email" type="text"><br><br>
        Mật khẩu * <br>
        <input  class = "nhap" type="password" name="password" id="password"><br><br>
        <input  class = "btn" type="submit" value="Đăng nhập" name = "login">       
    </form>
</div>

<?php require_once('./layouts/pageTQT/footer.php'); ?>