<input type="text" id="meil" placeholder="sinumeil@veebiaadress.lühend" size="25" onkeypress="Javascript: if (event.keyCode==13) kontrolliEmaili();"/>
<input type="submit" value="Kontrolli" name="kontrolli" onclick="Javascript:kontrolliEmaili();"/>
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
                        alert('Sisestatud meil on korrektne!');
                        return true;
                    }
            }
    </script>