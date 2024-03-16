import express from "express";

const PORT = 3000; // Puerto en el que el servidor Express escuchará las solicitudes

const app = express(); // Crear una instancia de la aplicación Express

// Definir una ruta para manejar solicitudes GET a la raíz del servidor
app.get("/", (req, res) => {
  res.status(200); // Establecer el código de estado de la respuesta a 200 (OK)
  res.send("Hello World from Express 🦍"); // Enviar una respuesta al cliente
});

// Escuchar en el puerto especificado y mostrar un mensaje en la consola cuando el servidor esté listo
app.listen(PORT, () => {
  console.log(`Express server running at http://localhost:${PORT} 🚀`);
});
