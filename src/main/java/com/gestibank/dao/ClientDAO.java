/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.dao;

import com.gestibank.entity.Agent;
import com.gestibank.entity.Client;
import java.io.Serializable;
import java.util.List;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author rambl
 */
public interface ClientDAO extends CrudRepository<Client, Long>{
    public List<Client> findByAgentId(Long id);
    public List<Client> findByAgent(Agent agent);
}
