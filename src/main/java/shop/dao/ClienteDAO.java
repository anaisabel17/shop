
package shop.dao;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;
import shop.model.Cliente;


@Stateless
public class ClienteDAO implements ClienteDAOLocal {
    @PersistenceContext(unitName = "shop_shop_war_1.0-SNAPSHOTPU")
    private EntityManager em;
    
         
    @Override
    public void addCliente(Cliente cliente) {
        em.persist(cliente);
    }

    @Override
    public void editCliente(Cliente cliente) {
        em.merge(cliente);
    }

    @Override
    public void deleteCliente(String id) {
        em.remove(getCliente(id));
    }

    @Override
    public Cliente getCliente(String id) {
        return em.find(Cliente.class, id);
 }

    @Override
    public List<Cliente> getAllClientes() {
    return em.createNamedQuery("Cliente.getAll").getResultList();
    }
    
}
