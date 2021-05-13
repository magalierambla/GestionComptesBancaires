/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.controller;

import com.gestibank.dao.UtilisateurDAO;
import com.gestibank.entity.Administrateur;
import com.gestibank.entity.Agent;
import com.gestibank.entity.Client;
import com.gestibank.entity.Utilisateur;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author rambl
 */
@Controller
public class PublicController {
    
    @Autowired
    private UtilisateurDAO utilDAO;
    
    @RequestMapping(value = "/deconnexion")
    public String deconnexion(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }
    
    @RequestMapping(value = "/inscription", method = RequestMethod.POST)
    public String inscriptionPOST(@ModelAttribute("util") Client monUtil, RedirectAttributes redirectAttr){  
        
        utilDAO.save(monUtil);
        
        redirectAttr.addFlashAttribute("message", "Inscription réussie");
        
        return "redirect:/inscription";
    }
    
    @RequestMapping(value = "/inscription", method = RequestMethod.GET)
    public String inscriptionGET(@ModelAttribute("util") Utilisateur monUtil){
        return "/public/formulaire-client.jsp";
    }
    
    @RequestMapping(value = "/connexion")
    public String connexion(@ModelAttribute("util") Utilisateur monUtil, HttpSession session){    
        
        Utilisateur utilTrouve = utilDAO.findOneByPseudoAndMdp(monUtil.getPseudo(), monUtil.getMdp());
        
        if(utilTrouve != null){
            //Trouve
            session.setAttribute("utilConnecte", utilTrouve);
            if( utilTrouve instanceof Client ){
                return "redirect:/client/accueil";
            } else if( utilTrouve instanceof Agent ){
                return "redirect:/agent/lister-clients";
            } else if ( utilTrouve instanceof Administrateur){
                return "redirect:/admin/dashboard";
            } 
        } 
        
        return "public/homepage.jsp";
    }
     
    @RequestMapping(value = "/")
    public String homepage( @ModelAttribute("util") Utilisateur util){   
        
        return "public/homepage.jsp";
    }
    
}
