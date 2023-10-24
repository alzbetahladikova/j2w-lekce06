[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: čokoláda</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/cokolada" method="post">
        <h1>Objednávka čokolády</h1>

        <label for="druh" class="radek">Druh:</label>
        [@spring.formSingleSelect path="form.druh" options={
        "": "",
        "1": "Milka",
        "2": "Orion",
        "3": "Lindor",
        "4": "Tobleronka",
        "5": "Karlova Koruna",
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Typ:</div>
        <div class="skupina">
            <div>
                <input id="typ1" type="radio" name="typ" value="BILA"/>
                <label for="typ1">bílá</label>
            </div>
            <div>
                <input id="typ2" type="radio" name="typ" value="MLECNA"/>
                <label for="typ2">mléčná</label>
            </div>
            <div>
                <input id="typ3" type="radio" name="typ" value="HORKA"/>
                <label for="typ3">hořká</label>
            </div>
        </div>
        [@spring.bind "form.objem"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="jmeno" class="radek">Jméno a příjmení:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" /]
            <label for="obchodniPodminky">Souhlasím s obchodními podmínkami</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</div>
</body>
</html>
