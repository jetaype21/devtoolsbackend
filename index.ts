import dotenv from "dotenv";
import server from "./src/server";

dotenv.config();

const puerto: number | string = process.env.PORT || 8000;

server.listen(puerto, () => {
  console.log(`La aplicacion esta corriendo en el puerto ${puerto}`);
});


// controlar error de servidor
server.on("error", (error) => {
  console.log(`${error}`);
});