/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestibank.test;

import com.gestibank.entity.Agent;
import com.gestibank.entity.Client;
import com.gestibank.entity.Compte;
import com.gestibank.entity.DemandeChequier;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import static org.junit.Assert.*;
import org.junit.Test;

/**
 *
 * @author quico
 */
public class JPQLTest {
    
    private EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
    
    //@Test
    public void verifQueUtilisateurDuCompte1PossedeUneDemandeChequier(){
        String r =
                "SELECT cheq "
                + "FROM Compte c"
                + "     JOIN c.client cli "
                + "     JOIN cli.demandesChequier cheq "
                + "WHERE c.id=1 ";
        
        Query query = em.createQuery(r);
        List<DemandeChequier> demandes = query.getResultList();
        
        assertEquals(1, demandes.size());
    }
    
    //@Test
    public void verifQueCompteId1EstLieAAgentJames(){
        String r =
                "SELECT c "
                + "FROM Compte c "
                + "     JOIN c.client cli "
                + "     JOIN cli.agent a "
                + "WHERE    a.prenom='James' "
                + "         AND c.id=1";
        
        Query query = em.createQuery(r);
        List<Compte> comptes = query.getResultList();
        
        assertEquals(1, comptes.size());
    }
    
    //@Test
    public void verifQueAgentJamesABienRecu2DemandesChequier(){
        String r1 = 
                "SELECT cheq "
                + "FROM DemandeChequier cheq "
                + "     JOIN cheq.client c "
                + "     JOIN c.agent a "
                + " WHERE a.prenom='James'";
        
        Query query = em.createQuery(r1);
        List<DemandeChequier> demandes = query.getResultList();
        
        assertEquals(2, demandes.size());
    }
    
    //@Test 
    public void verifQueMagaliePossede1DemandeChequier(){
        String r1 =
                "SELECT cheq "
                + "FROM DemandeChequier cheq "
                + "     JOIN cheq.client c "
                + "WHERE c.prenom='Magalie'";
        
        Query query = em.createQuery(r1);
        List<DemandeChequier> demandes = query.getResultList();
                
        assertEquals(1, demandes.size());
                
    }
    
    //@Test
    public void verifQueAgentDeThomasEstJames(){
        String req3 =
                "SELECT a "
                + "FROM Agent a "
                + "     JOIN a.clients c "
                + "WHERE c.prenom='Thomas'";
        
        Query query = em.createQuery(req3);        
        Agent a = (Agent) query.getSingleResult();
        
        assertEquals("James", a.getPrenom());
    }
    
//    //@Test
    public void verifQueNbDemandesChequierDesClientsDeAgentJamesEgal1(){
        String request =
                "SELECT dc "
                + "FROM Agent a "
                + "     JOIN a.clients c "
                + "     JOIN c.demandesChequier dc "
                + "WHERE a.prenom='James'";
        assertEquals(1, em.createQuery(request).getResultList().size()   );
    }
   
//    //@Test
    public void verifQueAgentJamesPossede2Clients(){
        String req = 
                  "SELECT   c "
                + "FROM     Agent a "
                + "         JOIN a.clients c "
                + "WHERE    a.prenom='James'";
        List<Client> clients = em.createQuery(req).getResultList();
        assertEquals(2, clients.size());
    }
    
//    //@Test
    public void req2(){
        List<DemandeChequier> chequiers = em.createQuery(""
                + "SELECT   cheq "
                + "FROM     DemandeChequier cheq "
                + "         JOIN cheq.client cli "
                + "WHERE    cli.prenom='Magalie'").getResultList();
        assertEquals(1, chequiers.size());
    }
  
//    //@Test
    public void req1(){
        Query query = em.createQuery("SELECT c FROM Client c");
        List<Client> clients = query.getResultList();
        assertEquals(2, clients.size());
    }
    
}
