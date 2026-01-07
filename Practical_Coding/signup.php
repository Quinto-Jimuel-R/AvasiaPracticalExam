<?php

include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $uid = uniqid("UID_");
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $conn->query("INSERT INTO users (uid, username, password, date_created, date_modified) VALUES ('$uid', '$username', '$password', NOW(), NOW())");

    $conn->query("INSERT INTO profiles (uid, firstname, lastname, address, email, contact_number, birthday) 
        VALUES 
        ('$uid', '{$_POST['firstname']}', '{$_POST['lastname']}', '{$_POST['address']}', '{$_POST['email']}', '{$_POST['contact']}', '{$_POST['birthday']}')");

    header("Location: login.html");
}
?>