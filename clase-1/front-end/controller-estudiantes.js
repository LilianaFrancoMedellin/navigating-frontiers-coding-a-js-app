/*
* Función que pide los estudiantes al back end
*/
function cargarEstudiantes() {
    const listaEstudiantes = document.getElementById("estudiantes"); 
    const xhr = new XMLHttpRequest();
    xhr.open("GET", "http://localhost:80/estudiantes");
    xhr.send();
    xhr.responseType = "json";
    xhr.onload = () => {
        if (xhr.readyState == 4 && xhr.status == 200) {
            const estudiantesComoLista = xhr.response;
            estudiantesComoLista.forEach(estudiante => {
                const itemListaEstudiante = document.createElement("li");
                itemListaEstudiante.appendChild(document.createTextNode(estudiante.nombre));
                listaEstudiantes.appendChild(itemListaEstudiante);
            });
        } else {
            console.log(`Error: ${xhr.status}`);
        }
    };
}

