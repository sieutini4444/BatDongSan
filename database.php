<?php

//include phpmaile files
require 'vendor/autoload.php';

//define name spaces
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


//thay đổi username và password tùy máy người dùng
$servername = "localhost";
$database = "bds";
$username = "root";
$password = "";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


function sendMail($email,$token){
    $mail= new PHPMailer(true);
    try {
        $mail->CharSet="UTF-8";
        
        $mail->isSMTP();                                            // Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
        $mail->Username   = 'truongan2000kg@gmail.com';                     // SMTP username
        $mail->Password   = '0973612521';                               // SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
        $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
    
        //Recipients
        $mail->setFrom('truongan2000kg@gmail.com', 'Admin');
        $mail->addAddress($email, 'Người nhận');     // Add a recipient
       
        // Content

        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = 'Xác minh tài khoản';
        //Cần thay đổi href ='http://localhost:81/ tùy vào địa chỉ localhost của máy
        $mail->Body    = "Click <a href ='http://localhost:81/sourcecode/templates/laylaimk.php?email=$email&token=$token'>vào đây</a> để xác minh tài khoản!";
        
    
        $mail->send();
        return true;
    } catch (Exception $e) {
        return false;
    }
}
function randomChar($length){
    $randomletter = substr(str_shuffle("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"), 0, $length);
    return $randomletter;
}
?>