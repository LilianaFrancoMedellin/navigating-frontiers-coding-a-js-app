import express from "express";

const PORT = 3000;
const app = express();

let counterA = 0;
let counterB = 0;

// Analizar cuerpos JSON en las solicitudes entrantes
app.use(express.json());

// Manejar solicitudes GET para /counterA
app.get("/counterA", (req, res) => {
  const resBody = { counterA };
  res.status(200).json(resBody);
});

// Manejar solicitudes GET para /counterB
app.get("/counterB", (req, res) => {
  const resBody = { counterB };
  res.status(200).json(resBody);
});

// Manejar solicitudes POST para /counterA
app.post("/counterA", (req, res) => {
  counterA += parseInt(req.body.increment); // Incrementar counterA
  const resBody = { counterA };
  res.status(200).json(resBody);
});

// Manejar solicitudes POST para /counterB
app.post("/counterB", (req, res) => {
  counterB += parseInt(req.body.increment); // Incrementar counterB
  const resBody = { counterB };
  res.status(200).json(resBody);
});

// Iniciar el servidor y mostrar un mensaje en la consola
app.listen(PORT, () => {
  console.log(`Express server running at http://localhost:${PORT} 🚀`);
});
