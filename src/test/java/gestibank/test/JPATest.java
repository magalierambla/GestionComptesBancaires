/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestibank.test;

import com.gestibank.entity.Client;
import com.gestibank.entity.Compte;
import com.gestibank.entity.CompteCourant;
import com.gestibank.entity.DemandeChequier;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.junit.Test;

import static org.junit.Assert.*;
import org.junit.Before;

/**
 *
 * @author quico
 */
public class JPATest {
    
    /**
     * Créer un client Magalie, avec un compte courant et une demande de chéquier
     * Créer un client Thomas, avec un compte courant solde 5€
     */

    //@Test
    public void remplir() {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();        
        em.getTransaction().begin();
        
        Client magalie = new Client();
        magalie.setPrenom("Magalie");
        em.persist(magalie);
        
        CompteCourant compteCourantMagalie = new CompteCourant();
        compteCourantMagalie.setSolde(1000D);
        compteCourantMagalie.setClient(magalie);
        em.persist(compteCourantMagalie);
        
        //Demande de chequier
        DemandeChequier demandeChequierMagalie = new DemandeChequier();        
        demandeChequierMagalie.setClient(magalie);
        em.persist(demandeChequierMagalie);
        
        Client thomas = new Client();
        thomas.setPrenom("Thomas");
        em.persist(thomas);
        
        CompteCourant compteCourantThomas = new CompteCourant();
        compteCourantThomas.setSolde(5D);
        compteCourantThomas.setClient(thomas);
        em.persist(thomas);
        
        em.getTransaction().commit();
    }
    
//    //@Test
    public void supprimOK(){
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        Compte c = em.find(Compte.class, 1L);
        em.getTransaction().begin();
        em.remove(c);
        em.getTransaction().commit();
   }
    
//    @Before
    public void initialiseBD(){
        
        System.out.println("BEFORE");
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        
        em.createQuery("DELETE FROM Compte c").executeUpdate();
        em.createQuery("DELETE FROM Client c").executeUpdate();
        Client c = new Client();
        c.setId(1L);
        c.setNom("Clampin");
        em.persist(c);
        
        Compte co=new Compte();
        co.setId(1L);
        co.setClient(c);
        co.setIban("1234");
        co.setSolde(5D);
        em.persist(co);
        
        em.getTransaction().commit();
    }
    
//    //@Test
    public void testMergeCompteId1OK() {
        
        System.out.println("testMergeCompteId1OK");
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        Compte c = new Compte();
        c.setId(1L);
        c.setSolde(1000000D);
        em.getTransaction().begin();
        em.merge(c);
        em.getTransaction().commit();
               
    }
    
//    //@Test
    public void testUpdateCompteId1OK() {
        System.out.println("testUpdateCompteId1OK");
       EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
       Compte c = em.find(Compte.class, 1L);
       em.getTransaction().begin();
       c.setIban("4567");
       c.getClient().setNom("Thomas");
       
       em.getTransaction().commit();
    }
    
//    //@Test
    public void testPersistCompteOK() {
        System.out.println("testPersistCompteOK");
        CompteCourant cc = new CompteCourant();
        cc.setSolde(1000d);
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        em.persist(cc);
        em.getTransaction().commit();
    }
    
//    //@Test
    public void testFindCompteId1NotNullOK(){
        System.out.println("testFindCompteId1NotNullOK");
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("PU");
        EntityManager em = emf.createEntityManager();
        
        Compte c = em.find(Compte.class, 1L);
        assertEquals( 5, c.getSolde(), 0 );
        assertEquals("Thomas", c.getClient().getNom());
    }
}
