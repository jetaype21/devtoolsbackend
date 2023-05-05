import express, { Request, Response, Router } from "express";
import { LogInfo } from "../utils/logger";
import { CategoriasController } from "../controller/CategoriasController";

const categoriasRouter: Router = express.Router();

categoriasRouter.route("/").get(async (req: Request, res: Response) => {
  LogInfo("Estas en la seccion de categorias");

  let id: any = req?.query?.id;

  const controller: CategoriasController = new CategoriasController();

  let resultado = id
    ? await controller.unaCategoria(id)
    : await controller.todasLasCategorias();

  return res.status(resultado.codigoEstado).json(resultado.mensaje);
});

export default categoriasRouter;
