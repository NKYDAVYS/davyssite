function facture(){
    var a = document.getElementById("t6");
    var b= document.getElementById("t7");
    var c= Number(a) * Number(b);
    t8.value = c;

    var d = document.getElementById("t10");
    var e = document.getElementById("t11");
    var f = Number(d) * Number(e);
    t12.value= f;

    var g= document.getElementById("t14");
    var h = document.getElementById("t15");
    var i= Number(g)*Number(h);
    t16.value = i;

    t18.value = Number(t8.value)+Number(t12.value)+Number(t16.value);
}