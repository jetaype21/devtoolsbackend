export interface ICategoriasController {
  todasLasCategorias(): Promise<any>;
  unaCategoria(categoria_id: number): Promise<any>;
}

export interface IHerramientasController {
  todasLasHerramientas(): Promise<any>;
  herramientasPorCategoria(name: any): Promise<any>;
}
