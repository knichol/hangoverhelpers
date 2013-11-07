/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package enterprise.web_jpa_war.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Kevin
 */
@Entity
@Table(name = "Customer_Order")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CustomerOrder.findAll", query = "SELECT c FROM CustomerOrder c"),
    @NamedQuery(name = "CustomerOrder.findByOrderID", query = "SELECT c FROM CustomerOrder c WHERE c.orderID = :orderID"),
    @NamedQuery(name = "CustomerOrder.findByAmount", query = "SELECT c FROM CustomerOrder c WHERE c.amount = :amount"),
    @NamedQuery(name = "CustomerOrder.findByDatecreated", query = "SELECT c FROM CustomerOrder c WHERE c.datecreated = :datecreated"),
    @NamedQuery(name = "CustomerOrder.findByOrderstatus", query = "SELECT c FROM CustomerOrder c WHERE c.orderstatus = :orderstatus"),
    @NamedQuery(name = "CustomerOrder.findByCustomerCustomerID", query = "SELECT c FROM CustomerOrder c WHERE c.customerCustomerID = :customerCustomerID"),
    @NamedQuery(name = "CustomerOrder.findByHelperID", query = "SELECT c FROM CustomerOrder c WHERE c.helperID = :helperID")})
public class CustomerOrder implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Order_ID")
    private Integer orderID;
    @Column(name = "Amount")
    private Integer amount;
    @Column(name = "Date_created")
    @Temporal(TemporalType.TIMESTAMP)
    private Date datecreated;
    @Column(name = "Order_status")
    private Integer orderstatus;
    @Column(name = "Customer_Customer_ID")
    private Integer customerCustomerID;
    @Column(name = "Helper_ID")
    private Integer helperID;

    public CustomerOrder() {
    }

    public CustomerOrder(Integer orderID) {
        this.orderID = orderID;
    }

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Date getDatecreated() {
        return datecreated;
    }

    public void setDatecreated(Date datecreated) {
        this.datecreated = datecreated;
    }

    public Integer getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(Integer orderstatus) {
        this.orderstatus = orderstatus;
    }

    public Integer getCustomerCustomerID() {
        return customerCustomerID;
    }

    public void setCustomerCustomerID(Integer customerCustomerID) {
        this.customerCustomerID = customerCustomerID;
    }

    public Integer getHelperID() {
        return helperID;
    }

    public void setHelperID(Integer helperID) {
        this.helperID = helperID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderID != null ? orderID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CustomerOrder)) {
            return false;
        }
        CustomerOrder other = (CustomerOrder) object;
        if ((this.orderID == null && other.orderID != null) || (this.orderID != null && !this.orderID.equals(other.orderID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "enterprise.web_jpa_war.entity.CustomerOrder[ orderID=" + orderID + " ]";
    }
    
}
