/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package enterprise.web_jpa_war.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Kevin
 */
@Entity
@Table(name = "Helper")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Helper.findAll", query = "SELECT h FROM Helper h"),
    @NamedQuery(name = "Helper.findByHelperID", query = "SELECT h FROM Helper h WHERE h.helperID = :helperID"),
    @NamedQuery(name = "Helper.findByName", query = "SELECT h FROM Helper h WHERE h.name = :name"),
    @NamedQuery(name = "Helper.findByPhone", query = "SELECT h FROM Helper h WHERE h.phone = :phone"),
    @NamedQuery(name = "Helper.findByStatus", query = "SELECT h FROM Helper h WHERE h.status = :status")})
public class Helper implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Helper_ID")
    private Integer helperID;
    @Size(max = 255)
    @Column(name = "Name")
    private String name;
    @Column(name = "Phone")
    private Integer phone;
    @Column(name = "Status")
    private Integer status;

    public Helper() {
    }

    public Helper(Integer helperID) {
        this.helperID = helperID;
    }

    public Integer getHelperID() {
        return helperID;
    }

    public void setHelperID(Integer helperID) {
        this.helperID = helperID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (helperID != null ? helperID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Helper)) {
            return false;
        }
        Helper other = (Helper) object;
        if ((this.helperID == null && other.helperID != null) || (this.helperID != null && !this.helperID.equals(other.helperID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "enterprise.web_jpa_war.entity.Helper[ helperID=" + helperID + " ]";
    }
    
}
