/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.controller;

import com.gestibank.dao.CompteDAO;
import com.gestibank.dao.CompteDAOCrud;
import com.gestibank.entity.Client;
import com.gestibank.entity.Compte;
import com.gestibank.entity.Utilisateur;
import com.gestibank.service.DemandeChequierService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author rambl
 */
@Controller
public class ClientController {
    
    @Autowired
    private DemandeChequierService demandeChequierService;
    
    @Autowired
    private CompteDAOCrud compteDAOCrud;
            
    @RequestMapping("/client/demande-chequier")
    public String demandeChequier(HttpSession session, RedirectAttributes redirectAttrs){
        Client clientConnecte = (Client) session.getAttribute("utilConnecte");
        
        boolean resDemande = demandeChequierService.demandeChequier( clientConnecte.getId() );
        String message;
        if( resDemande==false ){
            message = "Impossible d'envoyer une nouvelle demande";
        }else{
            message = "Votre demande a bien été envoyée";
        }
        redirectAttrs.addFlashAttribute("message", message);
        
        return "redirect:/client/accueil";
    }
    
    @RequestMapping("/client/accueil")
    public String accueil(HttpSession session, Model model){
        Utilisateur u =  (Utilisateur) session.getAttribute("utilConnecte");
        List<Compte> mesComptes = compteDAOCrud.findByClientId(u.getId());
       
        model.addAttribute("comptes", mesComptes);
        
        return "client/accueil-client.jsp";
    }
    
}
