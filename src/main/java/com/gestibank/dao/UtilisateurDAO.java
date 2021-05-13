/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.dao;

import com.gestibank.entity.Utilisateur;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author rambl
 */
public interface UtilisateurDAO extends CrudRepository<Utilisateur, Long>{
    
    public Utilisateur findOneByPseudoAndMdp(String pseudo, String mdp);
}
