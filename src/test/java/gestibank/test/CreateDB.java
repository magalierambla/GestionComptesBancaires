/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestibank.test;

import com.gestibank.entity.Client;
import com.gestibank.spring.SpringConfig;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 *
 * @author quico
 */
//@RunWith(SpringJUnit4ClassRunner.class)
//@SpringApplicationConfiguration(SpringConfig.class)
public class CreateDB {
    
    
    //@Test
    public void creer(){
        
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        
//        Client c = new Client();
//        em.getTransaction().begin();
//        em.persist(c);
//        em.flush();
//        em.getTransaction().commit();
            
    }    
}
