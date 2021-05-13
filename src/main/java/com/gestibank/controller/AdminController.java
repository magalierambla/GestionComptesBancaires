/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.controller;

import com.gestibank.dao.AgentDAO;
import com.gestibank.dao.ClientDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    
    @RequestMapping(value = "/admin/dashboard")
    public String dashboard(Model model){

        model.addAttribute("clientsNonAssocies", clientDao.findByAgent(null))   ;
        model.addAttribute("agents", agentDAO.findAll());
        
        return "admin/admin.jsp";
    }
    
    
            
}
