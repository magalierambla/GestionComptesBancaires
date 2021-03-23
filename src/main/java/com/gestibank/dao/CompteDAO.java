/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.dao;

import com.gestibank.entity.Compte;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;

/**
 *
 * @author quico
 */
public class CompteDAO {
 
    public void ajouter(Compte c){
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        
        em.getTransaction().begin();
        
        em.persist( c );
        
        em.getTransaction().commit();
    }
    
    public List<Compte> listeTous(){
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        
        List<Compte> comptes = em.createQuery("SELECT c FROM Compte c").getResultList();
        
        return comptes;
    }
}
