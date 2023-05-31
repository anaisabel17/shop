/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/SessionLocal.java to edit this template
 */
package shop.dao;

import jakarta.ejb.Local;
import java.util.List;
import shop.model.Cliente;

/**
 *
 * @author Isabel
 */
@Local
public interface ClienteDAOLocal {
    public void addCliente(Cliente cliente); 

    public void editCliente(Cliente cliente); 

    public void deleteCliente(String id); 

    public Cliente getCliente(String id); 

    public List<Cliente> getAllClientes();
}
