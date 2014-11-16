package br.com.caelum.agenda.teste;

import java.util.Calendar;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class TestaInsere {
	public static void main(String[] args) {
		// pronto para gravar
		Contato contato = new Contato();
		contato.setNome("Teste");
		contato.setEmail("testeo@email.com.br");
		contato.setEndereco("teste");
		contato.setDataNascimento(Calendar.getInstance());
		
		// grave nessa conexão
		ContatoDao dao = new ContatoDao();

		// metodo elegante
		dao.adiciona(contato);
		System.out.println("Gravado!!!");

	}

}
