import express, { Request, Response, Router } from "express";
import { LogInfo } from "../utils/logger";
import { HerramientasController } from "../controller/HerramientasController";

const herramientasRouter: Router = express.Router();

herramientasRouter.route("/").get(async (req: Request, res: Response) => {
  const controller: HerramientasController = new HerramientasController();

  let nombre: any = req?.query?.categoria;

  if (nombre) {
    let nombreFinal = nombre?.replace(/-/g, " ");
    const result = await controller.herramientasPorCategoria(nombreFinal);
    return res.status(200).send(result);
  } else {
    const result = await controller.todasLasHerramientas();
    return res.status(200).json(result);
  }
  // console.log(result);
});

export default herramientasRouter;
