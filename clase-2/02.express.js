import express from "express";

const app = express();
const PORT = 3000;

let counterA = 0;
let counterB = 0;

// Manejar solicitudes GET para /counterA
app.get("/counterA", (req, res) => {
  const resBody = { counterA };

  // Establecer el encabezado de la respuesta y enviar la respuesta como JSON
  res.status(200).json(resBody);
});

// Manejar solicitudes GET para /counterB
app.get("/counterB", (req, res) => {
  const resBody = { counterB };

  // Establecer el encabezado de la respuesta y enviar la respuesta como JSON
  res.status(200).json(resBody);
});

// Manejar solicitudes POST para /counterA
app.post("/counterA", (req, res) => {
  counterA++; // Incrementar counterA
  const resBody = { counterA };

  // Establecer el encabezado de la respuesta y enviar la respuesta como JSON
  res.status(200).json(resBody);
});

// Manejar solicitudes POST para /counterB
app.post("/counterB", (req, res) => {
  counterB++; // Incrementar counterB
  const resBody = { counterB };

  // Establecer el encabezado de la respuesta y enviar la respuesta como JSON
  res.status(200).json(resBody);
});

// Iniciar el servidor y mostrar un mensaje en la consola
app.listen(PORT, () => {
  console.log(`Express server running at http://localhost:${PORT} 🚀`);
});
