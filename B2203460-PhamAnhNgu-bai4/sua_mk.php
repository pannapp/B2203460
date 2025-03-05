<?php
session_start();
if (!isset($_SESSION["user_id"])) {
    header('Location: login.php');
    exit();
}
?>

<!DOCTYPE html>
<html>
<body>
<form action="capnhat_mk.php" method="post">
    Mật khẩu cũ: <input type="password" name="old_pass" required><br>
    Mật khẩu mới: <input type="password" name="new_pass" required><br>
    Nhập lại mật khẩu mới: <input type="password" name="confirm_pass" required><br>
    <input type="submit" value="Cập nhật mật khẩu">
</form>
</body>
</html>
