import express from "express";
import { userController } from "../controllers/userController.js";

 const userRoutes = express.Router();

userRoutes.post('/add-order', userController.addOrder);

export default userRoutes