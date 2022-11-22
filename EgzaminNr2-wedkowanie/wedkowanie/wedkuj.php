<?php 
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>wedkowanie</title>
    <link rel="stylesheet" href="styl_1.css">
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Portal dla wędkarzy</h1>
    </div>

 <div class="leweBloki">
    <div class="blok1">
            <h3>Ryby zamieszkujace rzeki</h3>
        <ol>
            <?php 
            require_once "connect.php";
            $connect = mysqli_connect($host, $db_user, $db_password, $db_name) or 
                die("could not connect: ".mysql_error());

            $sql = ("SELECT nazwa, lowisko.akwen, lowisko.wojewodztwo
            FROM ryby
            JOIN lowisko
            ON ryby.id = lowisko.Ryby_id WHERE lowisko.rodzaj = 3;");
            $result = mysqli_query($connect, $sql);

            while ($row = mysqli_fetch_array($result, MYSQLI_NUM)){
                $nazwa = $row[0];
                $akwen = $row[1];
                $wojewodztwo = $row[2];
                printf("
                    <li>
                        $nazwa pływa w rzece $akwen, $wojewodztwo,
                    </li>  
                ");
            }
            mysqli_free_result($result);
            ?>
        </ol>
    </div>  

<div class="blok2">
<h3>Ryby drapieżne naszych wód</h3>
<table>
    <tr>
        <th>L.p.</th>
        <th>Gatunek</th>
        <th>Występowanie</th>
    </tr>
    
        <?php 
            require_once "connect.php";
            $connect = mysqli_connect($host, $db_user, $db_password, $db_name) or
                die("could not connect: ".mysql_error());
            
            $sql = ("SELECT id, nazwa, wystepowanie FROM ryby WHERE styl_zycia = 1");
            $result = mysqli_query($connect, $sql);

            while($row = mysqli_fetch_array($result, MYSQLI_NUM)) {
                $id = $row[0];
                $nazwa = $row[1];
                $wystepowanie = $row[2];
                printf("
                <tr>
                    <td>
                    $id
                    </td>

                    <td>
                    $nazwa
                    </td>

                    <td>
                    $wystepowanie
                    </td>
                </tr>
                ");
            }
        ?>
    
</table>
</div>  

    </div>

    <div class="blokPrawy">
       
            <img src="ryba.jpg" alt="sum" class="img" width="400px" height="300px"/>
  
        <div class="link">
            <a href="http://localhost/kwarendy/">Pobierz kwarendy</a>
        </div>
    </div>

    <div class="footer">
        <text>footer</text>
</div>
</div>

</body>
</html>