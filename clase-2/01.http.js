import http from "http";

const PORT = 3000; // Puerto en el que el servidor escuchará las solicitudes

// Crear el servidor HTTP con una función de callback para manejar las solicitudes entrantes
const server = http.createServer((req, res) => {
  // Establecer el encabezado de la respuesta con el código de estado 200 y el tipo de contenido
  res.writeHead(200, {
    "Content-Type": "text/plain",
  });

  // Escribir el mensaje de respuesta en el cuerpo de la respuesta
  res.write("Hello World from Node HTTP 🦍");

  // Finalizar la respuesta
  res.end();
});

// Escuchar en el puerto especificado y mostrar un mensaje en la consola cuando el servidor esté listo
server.listen(PORT, () => {
  console.log(`Node HTTP server running at http://localhost:${PORT} 🚀`);
});
