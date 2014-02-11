/**
 * @author Kevin
 */

package enterprise.web_jpa_war.entity;

public class ShoppingCartItem {

    Packages product;
    short quantity;

    public ShoppingCartItem(Packages product) {
        this.product = product;
        quantity = 1;
    }

    public Packages getProduct() {
        return product;
    }

    public short getQuantity() {
        return quantity;
    }

    public void setQuantity(short quantity) {
        this.quantity = quantity;
    }

    public void incrementQuantity() {
        quantity++;
    }

    public void decrementQuantity() {
        quantity--;
    }

    public double getTotal() {
        double amount = 0;
        amount = (this.getQuantity() * product.getPrice().doubleValue());
        return amount;
    }

}
