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





		function enviarDatos() {
			event.preventDefault();
			const nombre = document.getElementById('nombre').value;
			const apellido = document.getElementById('apellido').value;
			const email = document.getElementById('email').value;
			const fecha = document.getElementById('fecha').value;
			const tema = document.getElementById('tema').value;
			
			
			fetch(`endpoint?nombreOInput=${nombre}&apellidoOInput=${apellido}&emailOInput=${email}&fechaOInput=${fecha}&temaOInput=${tema}`, {
				method: 'POST'
				
			})

				.then(response => response.json())
				.then(data => renderizarCard([data]))
				.catch(error => console.error('Error:', error));
			
			nombre.value = '';
			apellido.value = '';
			email.value = '';
			fecha.value = '';
			tema.value = '';
		}


