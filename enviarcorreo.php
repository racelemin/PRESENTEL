<?php
$nombre = htmlspecialchars($_POST['n'],ENT_QUOTES,'UTF-8');
$email = htmlspecialchars($_POST['e'],ENT_QUOTES,'UTF-8');
$contenido = htmlspecialchars($_POST['c'],ENT_QUOTES,'UTF-8');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/Exception.php';
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';

// Instantiation and passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    $mail->SMTPOptions = array(
		'ssl' => array(
		'verify_peer' => false,
		'verify_peer_name' => false,
		'allow_self_signed' => true
		)
	);
    //Server settings
    $mail->SMTPDebug = 0;                      // Enable verbose debug output
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'raulcelemin1425@gmail.com';                     // SMTP username
    $mail->Password   = '1003516440raul';                               // SMTP password
    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
    $mail->setFrom('raulcelemin1425@gmail.com', 'PRESENTEL');
    $mail->addAddress($email, $nombre);     // Add a recipient             

    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Bienvenido a PRESENTEL '.$nombre;
    $mail->Body    = '<!DOCTYPE html>
    <html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <table style="border: 1px solid black;width: 100%;">
        <thead>
            <tr>
                <td style="text-align: center;background: #FD6623;color:#333333" colspan="2">
                    <h1><b>Gracias por contactarse con  PRESENTEL ' .$nombre. '</b></h1>
                </td>
            </tr>
            <tr>
            <td style="text-align: center;" width="20%">
            <img src="https://i.ibb.co/Qcr3H7L/logo.jpg" alt="">
        </td>
        <td style="text-align: left;" align="justify"><span style="font-size: 25px;">'.utf8_decode($contenido).'</span></td>
                </tr>
            </thead>
        </table>
    </body>
    </html>';

    $mail->send();
    echo 1;
} catch (Exception $e) {
    echo 0;
}