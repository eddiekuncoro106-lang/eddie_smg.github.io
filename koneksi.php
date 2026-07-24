<?php

$server="127.0.0.1";
$username="root";
$password="root";
$DB="stokbarang";

$koneksi = new mysqli("$server","$username","$password","$DB");

if( !$koneksi){
    die("Gagal terhubung dengan database: " . mysqli_connect_error());
}


?>