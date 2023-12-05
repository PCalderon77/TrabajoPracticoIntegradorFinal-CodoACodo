const valorT = 200;
const descEstudiante = 80;
const descTrainee = 50;
const descJunior = 15;

let cantidad = document.getElementById("cantidadTickets");
let categoria = document.getElementById("categoriaSelect");

function montoTotal(){
    let valorTT = (cantidad.value) * valorT;
    if (categoria.value == 0){
        valorTT = valorTT;
    }
    if (categoria.value == 1){
        valorTT = valorTT-((descEstudiante/100)*valorTT);
    }
    if (categoria.value == 2){
        valorTT = valorTT-((descTrainee/100)*valorTT);
    }
    if(categoria.value == 3){
        valorTT = valorTT-((descJunior/100)*valorTT);
    }
    totalPago.innerHTML = valorTT;
}

btnResume.addEventListener("click", montoTotal);

function resetearForm(){
    cantidad.innerHTML = 0;
   // categoria.innerHTML = 0;
    totalPago.innerHTML = 0;
}

btnBorrar.addEventListener("click", resetearForm);