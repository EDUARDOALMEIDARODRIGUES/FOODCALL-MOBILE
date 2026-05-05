import { pesquisaDBC } from "../models/pesquisaModel.js";
import { insererirHistoricoDB } from "../models/historicoModel.js";
import { mostrarHistorico } from "../models/historicoModel.js";
import { conecta, fecha } from "../config/db.js";

export async function validaPesquisa(query) {
  conecta();
  if (!query) return mostrarHistorico();

  console.log("oia eu  no service");
  await insererirHistoricoDB(query.toLowerCase());
  const resultado = await pesquisaDBC(query.toLowerCase());
  fecha();
  return resultado;
}
