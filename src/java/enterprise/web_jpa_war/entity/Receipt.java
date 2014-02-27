package enterprise.web_jpa_war.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Kevin
 */
@Entity
@Table(name = "Receipt")
public class Receipt {

    @Id
    @Column(name = "Name")
    private String name;

    @Column(name = "Address")
    private String address;

    @Column(name = "Total")
    private String total;

    public Receipt() {
    }

    public Receipt(String name, String address, String total) {
        this.name = name;
        this.address = address;
        this.total = total;
    }

    public String getName() {
        return this.name;
    }

    public String getAddress() {
        return this.address;
    }

    public String getTotal() {
        return this.total;
    }
}
