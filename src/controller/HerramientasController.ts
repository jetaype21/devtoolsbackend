import {
  herramientasPorCategoria,
  todasLasHerramientas,
} from "../domain/orm/Herramientas.orm";
import { IHerramientasController } from "./interfaces";

export class HerramientasController implements IHerramientasController {
  public async todasLasHerramientas(): Promise<any> {
    const data = await todasLasHerramientas();
    return data;
  }

  public async herramientasPorCategoria(name: any): Promise<any> {
    const data = await herramientasPorCategoria(name);
    return data;
  }
}
