import { pool } from "../repositories/db";
import { LogError, LogSuccess, LogWarning } from "../../utils/logger";

export const todasLasCategorias = async () => {
  try {
    const resultado = await pool.query(
      "SELECT * FROM public.categorias LIMIT 100"
    );

    if (resultado.rows.length === 0) {
      LogWarning("CATEGORIAS CONTROLLER: No hay datos disponibles");

      return {
        mensaje: "No hay datos disponibles",
        codigoEstado: 404,
      };
    }

    LogSuccess("CATEGORIAS CONTROLLER: Datos obtenidos correctamente");
    return {
      mensaje: resultado.rows,
      codigoEstado: 200,
    };
  } catch (error) {
    LogError("CATEGORIAS CONTROLLER: Ocurrio un error");

    return {
      mensaje: `${error}`,
      codigoEstado: 500,
    };
  }
};

export const unaCategoria = async (categoria_id: number) => {
  try {
    let resultado = await pool.query(
      "SELECT * FROM categorias LIMIT 100 WHERE categoria_id = $1",
      [categoria_id]
    );

    if (resultado.rows.length === 0) {
      LogWarning("CATEGORIAS CONTROLLER: No hay datos disponibles");

      return {
        mensaje: "No hay datos disponibles",
        codigoEstado: 404,
      };
    }

    LogSuccess("CATEGORIAS CONTROLLER: Datos obtenidos correctamente");
    return {
      mensaje: resultado.rows[0],
      codigoEstado: 200,
    };
  } catch (error) {
    LogError("CATEGORIAS CONTROLLER: Ocurrio un error");

    return {
      mensaje: `${error}`,
      codigoEstado: 500,
    };
  }
};
