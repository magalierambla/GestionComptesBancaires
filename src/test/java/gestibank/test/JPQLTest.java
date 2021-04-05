/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestibank.test;

import com.gestibank.entity.Client;
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
    
    @Test
    public void verifQueNbDemandesChequierDesClientsDeAgentJamesEgal1(){
        String request =
                "SELECT dc "
                + "FROM Agent a "
                + "     JOIN a.clients c "
                + "     JOIN c.demandesChequier dc "
                + "WHERE a.prenom='James'";
        assertEquals(1, em.createQuery(request).getResultList().size()   );
    }
   
    @Test
    public void verifQueAgentJamesPossede2Clients(){
        String req = 
                  "SELECT   c "
                + "FROM     Agent a "
                + "         JOIN a.clients c "
                + "WHERE    a.prenom='James'";
        List<Client> clients = em.createQuery(req).getResultList();
        assertEquals(2, clients.size());
    }
    
    @Test
    public void req2(){
        List<DemandeChequier> chequiers = em.createQuery(""
                + "SELECT   cheq "
                + "FROM     DemandeChequier cheq "
                + "         JOIN cheq.client cli "
                + "WHERE    cli.prenom='Magalie'").getResultList();
        assertEquals(1, chequiers.size());
    }
  
    @Test
    public void req1(){
        Query query = em.createQuery("SELECT c FROM Client c");
        List<Client> clients = query.getResultList();
        assertEquals(2, clients.size());
    }
    
}
