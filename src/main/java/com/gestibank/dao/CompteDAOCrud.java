/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.dao;

import com.gestibank.entity.Compte;
import java.util.List;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author rambl
 */
public interface CompteDAOCrud extends CrudRepository<Compte, Long>{
    public List<Compte> findByClientId(Long clientId);
}
