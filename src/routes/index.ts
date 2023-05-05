import express, { Express, Request, Response } from "express";
import categoriasRouter from "./CategoriasRouter";
import herramientasRouter from "./HerramientasRouter";

// instancia del servidor
let server: Express = express();

// instania del router
let rootRouter = express.Router();

rootRouter.get("/", (req: Request, res: Response) => {
  res.send("bienvenido");
});

// api/*
server.use("/", rootRouter);
server.use("/categorias", categoriasRouter);
server.use("/herramientas", herramientasRouter);
export default server;
