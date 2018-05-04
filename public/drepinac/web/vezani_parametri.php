<?php 
$host='localhost';  // 127.0.0.1
$user='root';
$password='';
$database='fakultet';
$mysqli=new mysqli($host, $user, $password, $database);

        $query_tpl = "Select pbr from mjesto where nazMjesto=?";
        $naziv = "Zagreb";
        
        if ($stmt = $mysqli->prepare($query_tpl)) {
            $stmt->bind_param('s', $naziv);
            $stmt->execute();
            $stmt->bind_result($pbr);
            $stmt->fetch();
            echo $pbr;
            $stmt->close();
        }
        $mysqli->close();
        ?>
    </body>
</html>
