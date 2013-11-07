/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package enterprise.web_jpa_war.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Kevin
 */
@Entity
@Table(name = "Order_Package")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderPackage.findAll", query = "SELECT o FROM OrderPackage o"),
    @NamedQuery(name = "OrderPackage.findByPackageQuantity", query = "SELECT o FROM OrderPackage o WHERE o.packageQuantity = :packageQuantity"),
    @NamedQuery(name = "OrderPackage.findByCustomerOrderOrderID", query = "SELECT o FROM OrderPackage o WHERE o.orderPackagePK.customerOrderOrderID = :customerOrderOrderID"),
    @NamedQuery(name = "OrderPackage.findByPackagesPackageID", query = "SELECT o FROM OrderPackage o WHERE o.orderPackagePK.packagesPackageID = :packagesPackageID")})
public class OrderPackage implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected OrderPackagePK orderPackagePK;
    @Column(name = "Package_Quantity")
    private Integer packageQuantity;

    public OrderPackage() {
    }

    public OrderPackage(OrderPackagePK orderPackagePK) {
        this.orderPackagePK = orderPackagePK;
    }

    public OrderPackage(int customerOrderOrderID, int packagesPackageID) {
        this.orderPackagePK = new OrderPackagePK(customerOrderOrderID, packagesPackageID);
    }

    public OrderPackagePK getOrderPackagePK() {
        return orderPackagePK;
    }

    public void setOrderPackagePK(OrderPackagePK orderPackagePK) {
        this.orderPackagePK = orderPackagePK;
    }

    public Integer getPackageQuantity() {
        return packageQuantity;
    }

    public void setPackageQuantity(Integer packageQuantity) {
        this.packageQuantity = packageQuantity;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderPackagePK != null ? orderPackagePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderPackage)) {
            return false;
        }
        OrderPackage other = (OrderPackage) object;
        if ((this.orderPackagePK == null && other.orderPackagePK != null) || (this.orderPackagePK != null && !this.orderPackagePK.equals(other.orderPackagePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "enterprise.web_jpa_war.entity.OrderPackage[ orderPackagePK=" + orderPackagePK + " ]";
    }
    
}
