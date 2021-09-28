package dao;

import java.util.List;

import javax.persistence.EntityManager;

import model.Agenda;
import model.Procedimento;

public class AgendaDao {
	EntityManager em = EntityManagerProducer.getInstance().createManager();
	
	public void salvar(Agenda agenda ) throws Exception {
		em.getTransaction().begin();
		em.persist(agenda);
		em.getTransaction().commit();
	}
	
	public List<Procedimento> Listar() {
		return em.createQuery("Select p from Agenda p").getResultList();
	}

	public Procedimento buscaPorId(Integer id) {
		return (Procedimento) em.createQuery("Select p from Agenda p where p.id=:id").setParameter("id", id).getSingleResult();
	}
}
