<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.js"></script>
<input type="text" id="meil" placeholder="sinumeil@veebiaadress.lühend" size="25" onkeypress="Javascript: if (event.keyCode==13) kontrolliEmaili();"/>
<input type="submit" value="Kontrolli" name="kontrolli" onclick="Javascript:kontrolliEmaili();"/>
<div id="result"></div>
<script type="text/javascript">

        function kontrolliEmaili(){
                var meil = document.getElementById('meil');
                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if(!filter.test(meil.value)){
                        alert('Meiliaadress ei vasta õigele formaadile!');
                        meil.focus;
                        return false;
                    }
                else{

                    $.get('api.php',{emailvalidation:meil.value},function(data){
                        +                $('#result').text(data);
                        +            });
                    return true;

                    }
            }
    </script>