/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.dao;

import com.gestibank.entity.DemandeChequier;
import java.io.Serializable;
import java.util.List;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author rambl
 */
public interface DemandeChequierDAO extends CrudRepository<DemandeChequier, Serializable>{
    
    public List<DemandeChequier> findByClientAgentId (long idAgent);// D - C - A
    
    public List<DemandeChequier> findByClientIdAndEtat(long idClient, DemandeChequier.Etat etat);
    
}
