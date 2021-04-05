/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author quico
 */
@Entity
public class Client extends Utilisateur {
    
    public enum SituationMatrimoniale {
        
        CELIBATAIRE,
	MARIE,
	PACSE,
	CONCUBINAGE,
	VEUF,
	DIVORCE
    }
    
    @Enumerated(EnumType.STRING)
    private SituationMatrimoniale situationMatrimoniale;
    
    @Temporal(TemporalType.DATE)
    private Date dateNaissance;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateHeureCreation;
    
    @Column(length = 512)
    private String adresse;
    
    @ManyToOne
    @JoinColumn
    private Agent agent;

    @OneToMany(mappedBy = "client")
    private List<Compte> comptes = new ArrayList<>();
    
    @OneToMany(mappedBy = "client")
    private List<DemandeChequier> demandesChequier = new ArrayList<>();

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Client)) {
            return false;
        }
        Client other = (Client) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    public SituationMatrimoniale getSituationMatrimoniale() {
        return situationMatrimoniale;
    }

    public void setSituationMatrimoniale(SituationMatrimoniale situationMatrimoniale) {
        this.situationMatrimoniale = situationMatrimoniale;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public Date getDateHeureCreation() {
        return dateHeureCreation;
    }

    public void setDateHeureCreation(Date dateHeureCreation) {
        this.dateHeureCreation = dateHeureCreation;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public Agent getAgent() {
        return agent;
    }

    public void setAgent(Agent agent) {
        this.agent = agent;
    }

    public List<Compte> getComptes() {
        return comptes;
    }

    public void setComptes(List<Compte> comptes) {
        this.comptes = comptes;
    }

    public List<DemandeChequier> getDemandesChequier() {
        return demandesChequier;
    }

    public void setDemandesChequier(List<DemandeChequier> demandesChequier) {
        this.demandesChequier = demandesChequier;
    }

    @Override
    public String toString() {
        return "com.gestibank.entity.Client[ id=" + id + " ]";
    }
    
}
