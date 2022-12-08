const tableOne = document.getElementById('tableOne')
const tableTwo = document.getElementById('tableTwo')
const connectionOne = document.getElementById('connectionOne')
const connectionTwo = document.getElementById('connectionTwo')
const StringElement = document.getElementById('printString')
const couleurs = document.getElementById('couleurs')
const bonusBtn = document.getElementById('bonusBtn')

tableOne.addEventListener('click', e => {
    printTableOne();
})

tableTwo.addEventListener('click', e => {
    printTableTwo();
})

connectionOne.addEventListener('click', e => {
    printConnectionOne()
})

connectionTwo.addEventListener('click', e => {
    printConnectionTwo()
})
StringElement.addEventListener('click', e => {
    printString()
})
couleurs.addEventListener('click', e => {
    colorBody()
})
bonusBtn.addEventListener('click', e => {
    bonusFunc()
})


function printTableOne(){
    document.write('<table border=2px width=30%');
    for(let i = 0 ; i <= 5; i++){
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>')
    }
    document.write('</table>');
}



function printTableTwo(){
    let count = prompt("Combien de lignes souhaitez vous ?")
    console.log(count)
    document.write('<table border=2px width=30%');
    for(let i = 1 ; i <= count; i++){
        document.write(`<tr><td>${i}</td><td>*</td><td>*</td></tr>`)
    }
    document.write('</table>');

}
function printConnectionOne(){
    let login = prompt("Donner votre nom d'utilisateur")
    let password = prompt("Entrer votre mot de passe")
    if( login == "admin" && password == "admin"){
        document.write(`Bienvenue :     ${login}`)
    }
    else{
        alert("Accès refusé")
    }
}
function printConnectionTwo(){
    let loginTwo
    let passwordTwo
    let countLogin = 0
    do{
        countLogin++
        loginTwo = prompt("Nom d'utilisateur")
        passwordTwo = prompt("Mot de passe")
        if(loginTwo == "admin" && passwordTwo == "admin"){
            alert("✔️Bienvenue admin✔️")
            break
        }
        else{
            alert("❌Accès refusé❌")
        }
    }
    while(countLogin < 3)
    if(countLogin == 3){
        alert("⌛Délai dépassé⌛")
    }
}

function printString(){
    let message = prompt("Un message ?")
    document.write(` <p> ${message.toUpperCase()} </p>`);
    document.write(`<p>${message.toLowerCase()} </p>`);
    document.write(` <p> la chaine contient ${message.length} caractères </p>`);
    document.write(` <p> La premier lettre est '${message.charAt(0)}' </p>`);
}

function colorBody(){
    let color = prompt("Entrez une couleur")
    switch(color){
        case "vert" :
            document.body.style.background = "green"
            break
        case "VERT" :
            document.body.style.background = "green"
            break
        case "bleu" :
            document.body.style.background = "blue"
            break
        case "BLEU" :
            document.body.style.background = "blue"
            break
        default :
            alert("Couleur non définie")

    }
}
function bonusFunc(){
    let article
    let price
    let quantity
    let next 

    do{
        article = prompt("Votre article")
        price = prompt("Le prix")
        quantity = prompt("La quantité")

        alert(`Vos ${article} couterons ${price * quantity} €`)

        next = prompt("Voulez vous continuer (OUI/STOP) ?")
    }
    while(next != "STOP")
}