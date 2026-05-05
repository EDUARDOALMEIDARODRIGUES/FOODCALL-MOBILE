  import { inserirFavorito, deleteFavorito } from "../models/favoritoModel.js";
  import { fecha , conecta } from "../config/db.js";

  export async function validaFavorito(usuarioId, colocacaoId) {
    await conecta();
    console.log("favorito service");

    const resultado = await deleteFavorito(usuarioId, colocacaoId);
    console.log(resultado);

    if (resultado.modifiedCount === 0) {
      await inserirFavorito(usuarioId, colocacaoId);
      return false;
    }

    fecha();
    return true;
  }

