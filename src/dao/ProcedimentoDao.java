package dao;

import java.util.List;

import javax.persistence.EntityManager;

import model.Procedimento;

public class ProcedimentoDao {

	EntityManager em = EntityManagerProducer.getInstance().createManager();
	
	public void salvar(Procedimento procedimento) throws Exception {
		em.getTransaction().begin();
		em.persist(procedimento);
		em.getTransaction().commit();
	}
	
	public List<Procedimento> Listar() {
		return em.createQuery("Select p from Procedimento p").getResultList();
	}

	public Procedimento buscaPorId(Integer id) {
		return (Procedimento) em.createQuery("Select p from Procedimento p where p.id=:id").setParameter("id", id).getSingleResult();
	}
	
}
