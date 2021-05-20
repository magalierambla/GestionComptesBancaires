/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestibank.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author quico
 */
@Entity
public class CompteCourant extends Compte {

    private Double decouvert;
    private Double entreeMoyenneMensuelle;
    private Double montantInteret;
    private Integer nbJoursDecouvert;
    private Double plafondDecouvert;
    
//    @OneToMany
//    private DemandeChequier demandeChequier;
    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CompteCourant)) {
            return false;
        }
        CompteCourant other = (CompteCourant) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.gestibank.entity.CompteCourant[ id=" + id + " ]";
    }
    
}
