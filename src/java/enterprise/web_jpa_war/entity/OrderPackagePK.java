/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package enterprise.web_jpa_war.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Kevin
 */
@Embeddable
public class OrderPackagePK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "Customer_Order_Order_ID")
    private int customerOrderOrderID;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Packages_Package_ID")
    private int packagesPackageID;

    public OrderPackagePK() {
    }

    public OrderPackagePK(int customerOrderOrderID, int packagesPackageID) {
        this.customerOrderOrderID = customerOrderOrderID;
        this.packagesPackageID = packagesPackageID;
    }

    public int getCustomerOrderOrderID() {
        return customerOrderOrderID;
    }

    public void setCustomerOrderOrderID(int customerOrderOrderID) {
        this.customerOrderOrderID = customerOrderOrderID;
    }

    public int getPackagesPackageID() {
        return packagesPackageID;
    }

    public void setPackagesPackageID(int packagesPackageID) {
        this.packagesPackageID = packagesPackageID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) customerOrderOrderID;
        hash += (int) packagesPackageID;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderPackagePK)) {
            return false;
        }
        OrderPackagePK other = (OrderPackagePK) object;
        if (this.customerOrderOrderID != other.customerOrderOrderID) {
            return false;
        }
        if (this.packagesPackageID != other.packagesPackageID) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "enterprise.web_jpa_war.entity.OrderPackagePK[ customerOrderOrderID=" + customerOrderOrderID + ", packagesPackageID=" + packagesPackageID + " ]";
    }
    
}
