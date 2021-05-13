/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.controller;

import com.gestibank.dao.ClientDAO;
import com.gestibank.entity.Utilisateur;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author rambl
 */
@Controller
public class AgentController {
    
    @Autowired
    private ClientDAO clientDao;
    
    @RequestMapping(value = "/agent/lister-demandes-chequier")
    public String listDemandesChequier(){
        
        
        
        return "/agent/lister-demandes-chequier.jsp";
    }
    
    @RequestMapping(value = "/agent/lister-clients")
    public String listClients(Model model, HttpSession session){
        
        Utilisateur utilisateur = (Utilisateur) session.getAttribute("utilConnecte");
        
        model.addAttribute("clients", clientDao.findByAgentId(utilisateur.getId()));
        
        return "agent/agent.jsp";
    }
}
