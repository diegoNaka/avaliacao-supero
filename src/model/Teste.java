package model;

import java.util.List;

import dao.ProcedimentoDao;

public class Teste {

	public static void main(String[] args) throws Exception {
		ProcedimentoDao dao = new ProcedimentoDao();
		List<Procedimento> pocedimentos = dao.Listar();
		
		for (Procedimento procedimento : pocedimentos) {
			System.out.println(procedimento.getIdade());
		}
	}

}
