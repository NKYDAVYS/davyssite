function calcul_moyenne(){
    var n1= prompt("Donner la première note: ");
    var n2= prompt("Donner la deuxième note: ");
    var n3= prompt("Donner la troisième note: ");

    var somme = Number(n1)+Number(n2)+Number(n2);

    document.write ("Voici la somme: "+somme+ "<br>");
    var moyenne = somme/3;

    document.write("Voivi la moyenne:" +moyenne+"</br>");

    if (moyenne<10)
    document.write("Vous êtes Redoublant");
    else if (moyenne<14)
    document.write("Admis Passable");
    else 
    document.write("Admis Bien")
}




function test_age(){
    var n1= prompt("Donner le premier âge: ");

    if (Number(n1)<18){
    document.write("<font size='8em' color='pink'>"+"Vous êtes Mineur"+"</font>");
    document.bgColor="red";
    }
    else {
    document.write("<font size='8em' color='pink'>"+"Vous êtes Majeur"+"</font>");
    document.bgColor="green";
    }
}





function simple_affichage(){
    var name= prompt("Donner le prénom: ");
    var familyname= prompt("Donner le Nom: ");

    document.write('<center><div style="margin:auto; width:50%; border:6px solid red; ">');
    document.write("Bonjour "+ name + "  " +familyname);
    document.write('</div>');
}





function test_couleur(){
    let c= prompt("Donner une couleur: ");
    if(c == "rouge" || c == "ROUGE"){
        document.body.style.background = "red";
    }
    else if(c == "bleu" || c == "BLEU"){
        document.body.style.background="blue";
    }
    else{
        document.write("Couleur non comprise");
    }
}