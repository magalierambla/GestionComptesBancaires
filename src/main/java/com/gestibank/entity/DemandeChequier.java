/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author quico
 */
@Entity
public class DemandeChequier implements Serializable {

    public enum Etat{ 
        EN_ATTENTE, ACCEPTEE, REFUSEE, ENVOYEE
    }
    
   
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Enumerated(EnumType.STRING)
    private Etat etat;
    
    @ManyToOne
    @JoinColumn
    private Client client;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTimeDemande;

    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTimeTraitement;

    public Etat getEtat() {
        return etat;
    }

    public void setEtat(Etat etat) {
        this.etat = etat;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Date getDateTimeDemande() {
        return dateTimeDemande;
    }

    public void setDateTimeDemande(Date dateTimeDemande) {
        this.dateTimeDemande = dateTimeDemande;
    }

    public Date getDateTimeTraitement() {
        return dateTimeTraitement;
    }

    public void setDateTimeTraitement(Date dateTimeTraitement) {
        this.dateTimeTraitement = dateTimeTraitement;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DemandeChequier)) {
            return false;
        }
        DemandeChequier other = (DemandeChequier) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.gestibank.entity.DemandeChequier[ id=" + id + " ]";
    }
    
}
