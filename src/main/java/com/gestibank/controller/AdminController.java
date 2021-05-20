/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.controller;

import com.gestibank.dao.AgentDAO;
import com.gestibank.dao.ClientDAO;
import com.gestibank.entity.Agent;
import com.gestibank.entity.Client;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;

/**
 *
 * @author rambl
 */
@Controller
public class AdminController {
    
    @Autowired //Injection des dépendances
    private ClientDAO clientDao;
    
    @Autowired
    private AgentDAO agentDAO;
    
    @RequestMapping(value = "/admin/affecter-client")
    public String affecterClient(HttpServletRequest attr){
        
        // Récupère données postées par forumulaire
        long idClient = Long.parseLong( attr.getParameter("clientId") );
        long idAgent = Long.parseLong( attr.getParameter("agentId") );
        
        // Récupère entités correspondantes
        Client client = clientDao.findOne(idClient);
        Agent agent = agentDAO.findOne(idAgent);
        
        // Associe les 2 entités ( => pour initialisaer clé étragère client.agent_id en BD )
        client.setAgent(agent);
        clientDao.save(client);
        
        return "redirect:/admin/dashboard";
    }
    
    @RequestMapping(value = "/admin/dashboard")
    public String dashboard(Model model){

        model.addAttribute("clientsNonAssocies", clientDao.findByAgent(null))   ;
        model.addAttribute("agents", agentDAO.findAll());
        
        return "admin/admin.jsp";
    }
    
    
            
}
