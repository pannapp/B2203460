<?php
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);

// Kiểm tra và di chuyển file tải lên
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
    echo "Tập tin đã được tải lên thành công.<br>";
} else {
    die("Lỗi khi tải lên tập tin.");
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "qlbanhang";

// Kết nối CSDL
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

// Đọc nội dung file CSV
$csv = array_map('str_getcsv', file($target_file));
if (count($csv) <= 1) {
    die("Tập tin CSV không chứa dữ liệu hợp lệ.");
}

// Bỏ qua dòng đầu tiên (tiêu đề)
array_shift($csv);

// Thêm từng dòng dữ liệu vào bảng customers
foreach ($csv as $row) {
    $id = $conn->real_escape_string($row[0]);
    $fullname = $conn->real_escape_string($row[1]);
    $email = $conn->real_escape_string($row[2]);
    $birthday = $conn->real_escape_string($row[3]);
    $password = $conn->real_escape_string($row[4]);

    $sql = "INSERT INTO customers (id, fullname, email, birthday, password) 
            VALUES ('$id', '$fullname', '$email', '$birthday', '$password')";

    if ($conn->query($sql) === TRUE) {
        echo "Thêm khách hàng $fullname thành công.<br>";
    } else {
        echo "Lỗi: " . $conn->error . "<br>";
    }
}

// Đóng kết nối
$conn->close();
echo "Quá trình nhập dữ liệu hoàn tất!";
?>
