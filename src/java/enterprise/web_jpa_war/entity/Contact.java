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
@Table(name = "Contact")
public class Contact {

    @Id
    @Column(name = "Name")
    private String name;

    @Column(name = "Email")
    private String email;

    @Column(name = "Mail")
    private String message;

    
    public Contact() {
    }

    public Contact(String name, String email, String message) {
        this.name = name;
        this.email = email;
        this.message = message;
    }

    public String getName() {
        return this.name;
    }

    public String gegEmail() {
        return this.email;
    }

    public String getMessage() {
        return this.message;
    }
    
}
