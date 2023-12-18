function moyenne() {
    var m = (Number(n1.value) * Number(c1.value) +  Number(n2.value) * Number(c2.value) +  Number(n3.value) * Number(c3.value)) / ( Number(c1.value) +  Number(c2.value) +  Number(c3.value));
    moy.value = m;
    resultat.value = m > 20 ? "erreur" : m > 15 ? "Très bien" : m > 13 ? "Bien" : m > 11 ? "Assez Bien" : m > 9 ? "Admis Passable" : "Redoublant";
}