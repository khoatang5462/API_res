import express from 'express'
import userRoutes  from './userRoutes.js'
import  restRoutes  from './restRoutes.js'



const rootRoutes = express.Router()

rootRoutes.use('/rest', restRoutes)    
rootRoutes.use('/user', userRoutes)


export default rootRoutes