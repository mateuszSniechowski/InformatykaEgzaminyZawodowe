<?php
   require_once "connect.php";
?>
<html lang="pl">
<head>
    <meat charest="UTF-8">
    <link href="styl.css" rel="stylesheet"> 
    <title>Sklep papierniczy</title>
</head>

<body>
<div class="container">
    
<div class="baner">           
    <h1>W naszym sklepie internetowym kupisz najtaniej</h1>
</div>

<div class="blokLewy">
<h3>Promocja 15% obejmuje artykuły:</h3>
<ul>
<?php 
    $connect = mysqli_connect($host, $db_user, $db_password, $db_name) or
        die("ERROR: ".mysql_error());

    $sql = "SELECT nazwa FROM towary WHERE promocja = 1";
    $result = mysqli_query($connect, $sql);
    while($row = mysqli_fetch_array($result)){
    $nazwa = $row[0];

    echo(
        "<li>$nazwa</li>"
    );}       
    $connect -> close();          
?>
</ul>
</div>

<div class="blokSrodkowy">
<h3>Cena wybranego artykułu w promocji</h3>

<form class="form" method="POST" action="#">
    <select name="przedmiot">
<?php
    $connect = mysqli_connect($host, $db_user, $db_password, $db_name) or
        die("ERROR: ".mysql_error());

        $sql = "SELECT nazwa FROM towary WHERE promocja=1";
        $result = mysqli_query($connect, $sql);

        while($row = mysqli_fetch_array($result)){
            $nazwa = $row['nazwa'];

            echo("
            <option value=".$row['nazwa'].">".$row['nazwa']."</option>
            ");
        }
        $connect->close();
?>
    </select>
    <input name="submit" id="submit" type="submit" value="Wybierz">

<?php 
if(isset($_POST['submit'])){
    $connect = mysqli_connect($host, $db_user, $db_password, $db_name) or
    die("ERROR: ".mysql_error());
    
    $przedmiot = $_POST['przedmiot'];
    $query = "SELECT cena FROM towary WHERE nazwa='$przedmiot'";
    $result2 = mysqli_query($connect, $query);

    while($row2 = mysqli_fetch_array($result2)){
        $cena = $row2['cena'];

        $cena_promocyjna = round($cena * 0.85, 2);
        echo("<p>$cena_promocyjna</p>");
    }
}
?>
</form>
</div>
<div class="blokPrawy">

    <h3 class="bP">Kontakt</h3>
    <p>telefon: 123123123 <br> e-mail:
    <a href="mailto: bok@sklep.pl"> bok@sklep.pl</a></p>
    <img class="bP" src="promocja2.png" alt="promocja">

</div>
</div>

<div class="footer">
    <h4>Autor strony</h4>
</div>

</body>
</html>