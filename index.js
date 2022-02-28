//const express = require('express'); Version de common JS, así se hacía antes
import express from 'express'; // se debe agregar al package.json "type":"module",
import router from './routes/index.js';
import db from './config/db.js';
import { createRequire } from "module";
const require = createRequire(import.meta.url);
require('dotenv').config({path:'variables.env'});

const app = express();

//Conectar la BD
db.authenticate()
    .then( () => console.log('Base de datos conectada'))
    .catch(error => console.log(error));

//Definir Host y puerto
const host = process.env.HOST || '0.0.0.0';
const port = process.env.port || 4000;

//Habilitar pug
app.set('view engine','pug');

//Obtener el año actual
app.use((req,res,next) =>{
    const year = new Date();

    res.locals.actualYear = year.getFullYear();
    res.locals.nombreSitio = 'Agencia de viajes';
    next();
});

//Agregar body parser para leer datos de los formularios
app.use(express.urlencoded({extended: true}));

//Definir la carpeta publica
app.use(express.static('public'))

//Agregar Router
app.use('/', router);



app.listen(port,host, () => {
    console.log(`El servidor está funcionando en el puerto ${port} y en el host ${host}`);
});
