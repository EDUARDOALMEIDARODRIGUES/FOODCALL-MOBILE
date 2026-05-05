import express from "express";
import { pesquisa } from "../controllers/pesquisaController.js";
import { favorito } from "../controllers/favoritoController.js";

const router= express.Router();

router.get('/search', pesquisa);
router.get('/favorito/:ID', favorito)

export { router };
