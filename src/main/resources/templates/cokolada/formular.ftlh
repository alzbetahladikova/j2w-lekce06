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

        <label for="zbozi" class="radek">Zboží:</label>
        [@spring.formSingleSelect path="form.zbozi" options={
        "": "",
        "1": "Milka",
        "2": "Orion",
        "3": "Lindor",
        "4": "Tobleronka",
        "5": "Karlova Koruna"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Druh:</div>
        <div class="skupina">
            <div>
                <input id="druh1" type="radio" name="druh" value="BILA"/>
                <label for="druh1">bílá</label>
            </div>
            <div>
                <input id="druh2" type="radio" name="druh" value="MLECNA"/>
                <label for="druh2">mléčná</label>
            </div>
            <div>
                <input id="druh3" type="radio" name="druh" value="HORKA"/>
                <label for="druh3">hořká</label>
            </div>
        </div>
        [@spring.bind "form.druh"/]
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
