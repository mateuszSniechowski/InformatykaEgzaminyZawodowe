<?php 
    session_start();
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style_restauracjaDynamiczna.css">
</head>
<body>
    <div class="container">
        <div class="baner">
            <h1>Restauracja Wszystkie Smaki</h1>
        </div>

        <div class="panel-lewy"><img class="img" rel="nasze danie" src="menuV1.jpg"></div>
        <div class="panel-prawy">
            <h4>U nas dobrze zjesz!</h4>
      
            <ol class="ol">
                <?php 
                    require_once "connect.php";
                    $connect = mysqli_connect($host, $db_user, $db_password, $db_name) or
                        die("could not connect: ".mysql_error());
                    
                    $sql = ("SELECT typ, nazwa, cena FROM dania WHERE cena");
                    $result = mysqli_query($connect, $sql);

                    while ($row = mysqli_fetch_array($result, MYSQLI_NUM)) {
                        $typ = $row[0];
                        $nazwa = $row[1];
                        $cena = $row[2];
                        printf("
                                <li>
                                    $nazwa $cena zł 
                                </li>
                            ");
                    }
                    mysqli_free_result($result);
                ?>
            </ol>
  
        </div>

            <div class="panel-dolny">
                <h2>Zarezerwuj stolik on-line</h2>
                <form class="form" action="rezerwacja.php" method="POST">
            
                    <p>Data (format rrrr-mm-dd):</p>
                    <input class="input" name="data_rez" id="data_rez" required>
                
                    <p>ile osób?:</p>
                    <input class="input" type="number" name="liczba_osob" id="liczba_osob" required>
    
                    <p>Twój numer telefonu:</p>
                    <input class="input" type="text" name="telefon" id="telefon" required>
                    
                    <div class="checkbox">
                        <input type="checkbox" class="checkbox">
                        <p>Zgadzam się na przetwarzanie moich danych osobowych</p>
                    </div>
                
                    <label>
                        <input type="reset" class="resetInput" value="WYCZYŚĆ" />
                        <input type="submit" class="submitInput" value="REZERWUJ"/>
                    </label>
                </form>
                </div>
        <div class="footer">strone internetową opracował <i>0000000000</i></div>
    </div>
</body>
</html>

