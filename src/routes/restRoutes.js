import express from "express";
import connect from "../../db.js";
import { resController } from "../controllers/resController.js";

 const restRoutes = express.Router();

restRoutes.get('/get-likes-by-res/:resId', resController.getLikeListResId);
restRoutes.get('/get-likes-by-user/:user_id', resController.getLikeListUserId);
restRoutes.post('/like-rest', resController.likeRest )
restRoutes.delete('/unlike-rest',resController.unLike )
restRoutes.post('/create-rate', resController.createRate );
restRoutes.get('/get-rate-rest-by-rest/:res_id', resController.getRateByRest);
restRoutes.get('/get-rate-rest-by-user/:user_id', resController.getRateByUser)


export default restRoutes

