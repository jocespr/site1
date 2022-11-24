function calcule_moyenne()
{
    var note1= prompt("donne la premiere note: ");
    var note2= prompt("donner le deuxime note: ");
    var note3= prompt("donner la troisieme note : ");

    var somme = Number(note1)+Number(note2)+Number(note3);

    document.write ("voici la somme: " + somme + "<br>");
    var moyenne= somme/3;

    document.write("Voici la moyenne: " + moyenne + "<br>");

    if (moyenne<10)
    document.write("Vous etes redoublant");
    else
    document.write("vous etes admis");

}
function test_age()
{
    var age= prompt("donnez votre age: ");
    if (age <18)
    {
        document.write("vous etes mineur ");
        document.body.style.background = "red";
    }
    else
    {
        document.write("vous etest majeur");
        document.body.style.background = "green";
    }
}

function simple_affichage()
{
    var nom = prompt("donner votre nom");
    var prenom = prompt("donner votre prenom");

    document.write("<div style=' color:red; margin:auto; width:300px ; border: 2px solid blue; '>");
    document.write("Bonjour  " + prenom + " " + nom);
    document.write("</div>");
}

function test_couleur()
{
    var c = prompt("donner une couleur");
    if ( c == "rouge" || c == "ROUGE" || c=="R")
    document.body.style.background = "red";
    else if (c == "bleu" || c == "BLEU")
    document.body.style.background = "blue";
    else
    document.write("couleur non comprise");
}

function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);

    t3.value = c;
}

function multiplication()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);

    t3.value = c;
}

function soustraction()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);

    t3.value = c;
}

function division()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);

    t3.value = c;
}

function parite()
{
    var v = Number(document.getElementById("t1").value);
    if (v % 2==0)

    alert("Ce nombre est pair");
    else
    alert("Ce nombre est impair");
}

function permute()
{
    var v3 = "";
    a = document.getElementById("t1").value;
    b = document.getElementById("t2").value;
    v3=a;
    a=b;
    b=v3;

    t1.value = a;
    t2.value = b;
}