import express, { Express, Response, Request } from "express";
import cors from "cors";

// ruta principal
import rootRouter from "../routes";

const server: Express = express();

server.use(express.urlencoded({ extended: true, limit: "50mb" }));
server.use(express.static("public"));
server.use(express.json());
server.use(cors());

server.use("/api", rootRouter);

// * redireccion
server.get("/", (req: Request, res: Response) => {
  res.redirect("/api");
});

export default server;
