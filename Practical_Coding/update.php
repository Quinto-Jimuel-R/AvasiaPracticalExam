<?php 

    include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $uid = $_SESSION['uid'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $address = $_POST['address'];
    $email = $_POST['email'];
    $contact_number = $_POST['contact'];
    $birthday = $_POST['birthday'];

    $conn->query("UPDATE profiles SET 
        firstname='$firstname', 
        lastname='$lastname', 
        address='$address', 
        email='$email', 
        contact_number='$contact_number', 
        birthday='$birthday', 
        date_modified=NOW() 
        WHERE uid='$uid'");

    header("Location: main.php");
}

?>