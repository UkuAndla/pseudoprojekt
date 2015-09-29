<?php
    $page=(isset($_GET['page'])? $_GET['page'] : 'home');
?>

<!doctype html>
<html lang="et">
<head>
        <meta charset="UTF-8">
        <title>Serveripoolsed</title>
    </head>
<body>
<?php
  require $page.".php";
?>
+</body>
+</html>