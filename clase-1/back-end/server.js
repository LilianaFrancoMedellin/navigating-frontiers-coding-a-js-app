const express = require('express')
const app = express()
const puerto = 80

const estudiantes = [
    {id: 1, nombre: 'Hernan', apellido: 'Metaute'},
    {id: 2, nombre: 'Liliana', apelllido: 'Franco'}
]

app.get('/estudiantes', (request, response) => {
    response.send(estudiantes)
})

// Configurar nuestro servidor para que tambien entregue el html del saludo
app.use(express.static('../front-end'))

app.listen(puerto, () => {
  console.log(`Proceso de servidor escuchando en el puerto ${puerto}`)
})