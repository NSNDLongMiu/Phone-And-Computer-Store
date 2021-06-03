<?php
if (isset($_GET['position'])) {
    header('Content-Type: application/json; charset=utf-8');
    $path = "";
    if ($_GET['position'] === 'product') {
        $path = 'public/uploads/products/'. date("Y") . '/' . date("m") . '/';
    } elseif ($_GET['position'] === 'customer') {
        $path = 'public/uploads/images/';
    } else {
        return;
    }

    if (isset($_FILES['thumbnailUpload'])) {
        $file_name = rand(1, 10000) . str_replace(" ", "", $_FILES['thumbnailUpload']['name']);
        $file_tmp = $_FILES['thumbnailUpload']['tmp_name'];
        $file_type = $_FILES['thumbnailUpload']['type'];
        $file_error = $_FILES['thumbnailUpload']['error'];

        if ($file_error == 0) {
            $part = $_SERVER['DOCUMENT_ROOT'] . '/Project/Phone-And-Computer-Store/' . $path ;
            move_uploaded_file($file_tmp, $part . $file_name);
            echo json_encode($path . $file_name);
            return;
        }
    }
}
echo json_encode("Error");
return;
