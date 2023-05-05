import { pool } from "../repositories/db";

export const todasLasHerramientas = async () => {
  try {
    let r = (await pool.query("select * from categorias")).rows;
    let a = (await pool.query("select * from herramientas")).rows;

    let todo = r.map((res) => {
      let nombre = res.categoria_nombre;
      let descripcion = res.categoria_descripcion;

      let objeto = {
        name: nombre,
        descripcion,
        tools: a.filter((data) => data.categoria_id == res.categoria_id),
      };

      return objeto;
    });

    return todo;
  } catch (error) {}
};

export const herramientasPorCategoria = async (name: any) => {
  try {
    let data = (
      await pool.query(
        "select * from herramientas h inner join categorias c on h.categoria_id = c.categoria_id where c.categoria_nombre = $1 ",
        [name]
      )
    ).rows;

    let nombre = data[0]?.categoria_nombre;
    let descripcion = data[0]?.categoria_descripcion;

    let objeto = {
      name: nombre,
      descripcion,
      tools: data,
    };

    let todo = [objeto];

    return todo;
  } catch (error) {}
};
