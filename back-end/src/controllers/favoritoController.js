import { ObjectId } from "mongodb";
import { validaFavorito} from "../services/favoritoService.js";

export async function favorito(req, res, next) {
  //atribui id a cada id, user com um jwt que é guardado no login
  //colocacoesId recebe no parametro da requisição 
  const usuarioId = new ObjectId(req.user.id);
  const colocacoesId = new ObjectId(req.params.itemId);

  try {
    
    /*atribui um valor a uma constante esperando um retorno da
    função importada 'validaPesquis' */
    const resultado = await validaFavorito(usuarioId, colocacoesId);
    // manda uma responsta json
    res.json(resultado);
  } catch (err) {
        //em caso de erro no meio da execução manda um next com erro
    next(err);
  }
}
