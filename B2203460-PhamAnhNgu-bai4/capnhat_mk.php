<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "qlbanhang";

// Kết nối CSDL
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

$user_id = $_SESSION["user_id"];
$old_pass = md5($_POST["old_pass"]);
$new_pass = md5($_POST["new_pass"]);
$confirm_pass = md5($_POST["confirm_pass"]);

// Kiểm tra mật khẩu cũ
$sql = "SELECT password FROM customers WHERE id='$user_id'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();

if ($row["password"] != $old_pass) {
    die("Mật khẩu cũ không đúng!");
}

// Kiểm tra mật khẩu mới khớp nhau và không giống mật khẩu cũ
if ($new_pass != $confirm_pass) {
    die("Mật khẩu mới không khớp!");
}
if ($new_pass == $old_pass) {
    die("Mật khẩu mới không được trùng mật khẩu cũ!");
}

// Cập nhật mật khẩu mới
$sql = "UPDATE customers SET password='$new_pass' WHERE id='$user_id'";
if ($conn->query($sql) === TRUE) {
    echo "Đổi mật khẩu thành công!";
    header('Refresh: 3;url=homepage.php');
} else {
    echo "Lỗi: " . $conn->error;
    header('Refresh: 3;url=sua_mk.php');
}

$conn->close();
?>
