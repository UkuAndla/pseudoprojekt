<!doctype html>
<html lang="et">
<head>
        <meta charset="UTF-8">
        <title>Serveripoolsed</title>
    </head>
<body>
<?php
    if(isset($_GET['page'])){
            require $_GET['page'].".php";
        }
?>
+</body>
+</html>