package dao;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerProducer {

	private static final EntityManagerProducer INSTANCE = new EntityManagerProducer();

    private final EntityManagerFactory factory;

    private EntityManagerProducer() {
        this.factory = Persistence.createEntityManagerFactory("supero");
    }

    public static EntityManagerProducer getInstance() {
        return INSTANCE;
    }

    public EntityManagerFactory getFactory() {
        return factory;
    }

    public EntityManager createManager() {
        return factory.createEntityManager();
    }

}