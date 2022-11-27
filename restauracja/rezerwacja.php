<?php
    require_once "connect.php";

    $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);

    if ($polaczenie->connect_errno!=0){
        echo "error: ".$polaczenie->connect_errno;
    }else{
        $data_rez = $_POST["data_rez"];
        $liczba_osob = $_POST['liczba_osob'];
        $telefon = $_POST["telefon"];

        $sql = "INSERT INTO rezerwacja (data_rez, liczba_osob, telefon) VALUES ('$data_rez', '$liczba_osob', '$telefon')";
        
        $polaczenie->query($sql);
        echo "<script>alert('dodano do bazy')</script>";
        header("refresh:0.01; url=restauracja.html");
   
        $polaczenie->close();
    }
?>
