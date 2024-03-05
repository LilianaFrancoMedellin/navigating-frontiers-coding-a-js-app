# Nuestro primer servidor!
## Ejercicio 1 Women Who Code
Este repo contiene una app ultra sencilla para mostrar una lista de estudiantes

## ¿Cómo correr el repo?
1. Podemos instalar node.js directamente en la máquina: https://nodejs.org/en/learn/getting-started/how-to-install-nodejs
Este proyecto se creó con la última versión LTS: `20.11.1`
2. Instalar express como dependencia
En la carpeta raíz correr
```bash
npm install
```
3. Correr el servidor
Cambiarse a la carpeta del back end y arrancar el servidor
```bash
cd back-end
node server.js
```
4. Revisar la aplicacion corriendo en el navegador: Abrir `http://localhost`

## La tarea: Calentamiento
### Con dedicatoria a Laura # 1:
Quiero que abran el archivo `server.js` y cambien la línea
```javascript
const puerto = 80
```
por
```javascript
const puerto = 3000
```
y vuelvan a correr en la carpeta `back-end`
```bash
node server.js
```
La aplicación se va a romper (revisen en el navegador en la pestaña `Network` de las herramientas de desarrollador)
¿Qué tuvieron que cambiar para volver a ver la lista de estudiantes?
¿Porqué antes no teníamos que especificar el puerto en el navegador para ver la lista?

## Sigamos dañando cosas!
Cambien el nombre del archivo `index.html` en la carpeta `front-end` por `estudiantes.html`
¿Cómo hay que poner ahora la URL en el navegador para ver nuestra página?