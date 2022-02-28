import express from 'express';
import {
    paginaInicio, paginaNosotros,
    paginaViajes,paginaDetalleViaje,
    paginaTestimonios}
    from '../Controllers/paginasController.js'
import {guardarTestimonio} from '../Controllers/testimoniosController.js'

const router = express.Router();

router.get('/', paginaInicio);

router.get('/nosotros',paginaNosotros);

router.get('/viajes', paginaViajes);
router.get('/viajes/:viaje', paginaDetalleViaje);

router.get('/testimonios',paginaTestimonios);
router.post('/testimonios',guardarTestimonio);


export default router;