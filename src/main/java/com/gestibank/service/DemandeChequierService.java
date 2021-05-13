/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.service;

import com.gestibank.dao.ClientDAO;
import com.gestibank.dao.DemandeChequierDAO;
import static com.gestibank.entity.Compte_.client;
import com.gestibank.entity.DemandeChequier;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author rambl
 */
@Service
public class DemandeChequierService {
    @Autowired
    private DemandeChequierDAO dao;
    
    @Autowired
    private ClientDAO clientDAO;
        
    /**
     * Vérifie si pas de demande en cours, et crée une demande les cas échéans.
     * Renvoie un boolean.
     * @param idClient
     * @return 
     */
    public boolean demandeChequier(long idClient){
        // Renvoie false si demande EN ATTENTE ou ACCEPTEE
        List<DemandeChequier> demandeChequierEnAttentes = dao.findByClientIdAndEtat(idClient, DemandeChequier.Etat.EN_ATTENTE);
        List<DemandeChequier> demandeChequierAcceptees = dao.findByClientIdAndEtat(idClient, DemandeChequier.Etat.ACCEPTEE);
        if( demandeChequierEnAttentes.size()>0 || demandeChequierAcceptees.size()>0  ){
            return false;
        }
        
        // Ajouter la demande 
        DemandeChequier demande = new DemandeChequier();
        demande.setClient( clientDAO.findOne(idClient) );
        demande.setDateTimeDemande(new Date());
        demande.setEtat(DemandeChequier.Etat.EN_ATTENTE);
        
        dao.save(demande);
        return true;
    }
            
}
