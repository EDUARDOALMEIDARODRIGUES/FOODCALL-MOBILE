//importação
import { app }from "../app.js";
import dotenv from "dotenv";
//conecção com o .env
dotenv.config()
//atribuindo valor as constantes
const port = process.env.PORTA;

//roda o servidor deacordo com a porta
app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
