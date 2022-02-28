/* req es lo que nosotros enviamos al servidor
res es la respuesta que recibimos de express y vemos en pantalla. send envia un texto a pantalla, json envia un json, render envía toda una vista*/

import {Viaje} from '../models/Viaje.js';
import {Testimonio} from '../models/Testimoniales.js';

const paginaInicio = async (req,res) => { 

    //Consultar 3 viajes del modelo viaje

    const promiseDB = [];

    promiseDB.push(Viaje.findAll({limit: 3}));
    promiseDB.push(Testimonio.findAll({limit: 3}));

    try {
        const resultado = await Promise.all(promiseDB)

        res.render('inicio',{
            pagina: 'Inicio',
            clase: 'home',
            viajes: resultado[0],
            testimonios: resultado[1]
        });

    } catch (error) {
        console.log(error);
    }
}

const paginaNosotros = (req,res) => { 
    res.render('nosotros',{
        pagina: 'Nosotros'
    }); 
}

const paginaViajes = async (req,res) => { 
    //Consultar BD
    const viajes = await Viaje.findAll();

    console.log(viajes);

    res.render('viajes',{
        pagina: 'Próximos Viajes',
        viajes,
    }); 
}

//Muestra un viaje por su SLUG
const paginaDetalleViaje = async (req,res) => {
    const {viaje} = req.params;

    try {
        const consultaViaje = await Viaje.findOne({where : {slug : viaje}})

        res.render('viaje',{
            pagina: 'Información Viaje',
            consultaViaje
        })
    } catch (error) {
        console.log(error);
    }
}

const paginaTestimonios =async (req,res) => {
    try {
        const testimonios = await Testimonio.findAll();

        res.render('testimonios',{
            pagina: 'Testimonios',
            testimonios
        }); 
    } catch (error) {
        console.log(error);
    }
    
}


export {
    paginaInicio,
    paginaNosotros,
    paginaViajes,
    paginaDetalleViaje,
    paginaTestimonios
}
