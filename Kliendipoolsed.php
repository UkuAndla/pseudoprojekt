<!doctype html>
<html lang="et">
<head>
    <meta charset="UTF-8">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

    <title>Kliendipoolsed</title>
</head>
<body>

<button onclick="tereMaailm()">Tere Maailm</button>

<a href="javascript:alertKHK()">Tere Maailm</a>

<a href="http://www.khk.ee" onclick="alert('J‰‰me siia!');return false;">J‰‰me siia</a>
<br>

<img id="pic" onclick="muuda()" width="200" height="235" src="http://www.thedailycat.com/health/advances/cat_identification/images/large.jpg">

    <br>
<img id="pilt" onclick="asendaKoer()" width="200" height="140" src="http://s.hswstatic.com/gif/whiskers-sam.jpg">
<br>

<button class="varv">Red</button>
<button class="varv">Blue</button>
<button class="varv">Green</button>
<button id="rklick">Luba parem klıps</button>

<button id="kustuta">Kaduv kass</button>
<script>
    var pklick=false;
            $("#klick").bind("click",function(){
                    return pklick=true;
                });
            $(document).ready(function(){
                    $(document).on("contextmenu",function(){
                            return pklick;
                        });
                })




</body>
</html>