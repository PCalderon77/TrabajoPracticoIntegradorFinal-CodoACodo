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






/*NO FUNCIONA EL script*/



/*
function listarOradores() {
			event.preventDefault();

			fetch('endpoint', {
				method: "GET"
			})
				.then(response => response.json())
				.then(data => renderizarTabla(data))
				.catch(error => console.log("Error al traer los oradores ..." + error))

		}

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

		function renderizarTabla(data) {
			const tabla = document.getElementById('cuerpoTabla');
			tabla.innerHTML = '';
			console.log(data)
			data.forEach(element => {
				console.log(element);
				const fila = document.createElement('tr');
				fila.innerHTML = `<td>${element.id}</td>
                        <td>${element.nombre}</td>
                        <td>${element.apellido}</td>
                        <td>${element.email}</td>
                        <td>${element.fecha}</td>
                        <td>${element.tema}</td>`;
				tabla.appendChild(fila);
			});
		}

		function renderizarCard(data) {
			const cardContainer = document.getElementById('historial');
			const cards = cardContainer.getElementsByClassName('card');

			if (cards.length >= 3) {
				cardContainer.removeChild(cards[0]);
			}

			data.forEach(element => {
				const card = document.createElement('div');
				card.classList.add("card", "text-white", "bg-success", "mb-3", "mr-1");
				card.style.maxWidth = "18rem";

				card.innerHTML =
					`<div class="card-header">Usuario guardado</div>
                    <div class="card-body">
					<h5 class="card-title">${element.nombre} ${element.apellido} ${element.email} ${element.fecha} ${element.tema}</h5>
					
				</div>`;

				cardContainer.appendChild(card);
			});
		}
		
		*/