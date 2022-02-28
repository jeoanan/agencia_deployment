import Sequelize from 'sequelize';
import { createRequire } from "module";
const require = createRequire(import.meta.url);
require('dotenv').config({path:'variables.env'});

const db = new Sequelize(process.env.BD_NOMBRE,process.env.BD_USER,process.env.BD_PASS,{
    host: process.env.BD_HOST,
    port: process.env.BD_PORT,
    dialect: 'mariadb',
    define: {
        timestamps: false
    },
    pool: {
        max: 5,
        min: 0,
        acquire: 3000,
        idle: 10000
    }
});

export default db;