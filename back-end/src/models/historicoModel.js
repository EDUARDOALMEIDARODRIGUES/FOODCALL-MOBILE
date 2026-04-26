import { collHistorico } from "../config/db.js";
import { ObjectId } from "mongodb";

/*função que insere o Historico de acordo com o id 
do usuario enviado pelo service*/
export async function insererirHistoricoDB(usuarioID,doc) {
  await collHistorico.updateOne(
    {
      usuarioId: usuarioID,
    },
    {
      $push: {
        dados_busca: {
          dado_buscado: doc,
          data_busca: new Date(),
        },
      },
    },
  );
  console.log("armazena");
}

/*função que mostra o Historico de acordo com o id 
do usuario enviado pelo service*/
export async function mostrarHistorico(usuarioID) {
  console.log("mostra o historico");

  const acheHistorico = { _id: 0, usuarioId: 0 };
  return await collHistorico
    .find({ usuarioId: usuarioID })
    .project(acheHistorico)
    .toArray();
}
