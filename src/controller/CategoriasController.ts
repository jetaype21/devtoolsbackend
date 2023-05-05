import { todasLasCategorias, unaCategoria } from "../domain/orm/Categorias.orm";
import { ICategoriasController } from "./interfaces";

export class CategoriasController implements ICategoriasController {
  public async todasLasCategorias(): Promise<any> {
    let response = await todasLasCategorias();

    return {
      mensaje: response.mensaje,
      codigoEstado: response.codigoEstado,
    };
  }

  //
  public async unaCategoria(categoria_id: number): Promise<any> {
    let response = await unaCategoria(categoria_id);

    return {
      mensaje: response.mensaje,
      codigoEstado: response.codigoEstado,
    };
  }
}
