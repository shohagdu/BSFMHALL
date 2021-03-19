<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'medilife_special_hospital_db';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
$conn->set_charset("utf8");
if(! $conn ) {
    die('Could not connect: ' . mysqli_error());
}