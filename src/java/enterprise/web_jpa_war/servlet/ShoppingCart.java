package enterprise.web_jpa_war.servlet;
import enterprise.web_jpa_war.entity.*;
import java.util.*;

public class ShoppingCart {

    private List<ShoppingCartItem> CartPackage;
    public ShoppingCart() {
        CartPackage = new ArrayList<ShoppingCartItem>();
    }

    public void add(int Package_ID, String Name, float Price, int Stock) {
        Iterator<ShoppingCartItem> items = CartPackage.iterator();
        while (items.hasNext()) {
            ShoppingCartItem packages = items.next();
            if (packages.getId() == Package_ID) {
                packages.setStock(packages.getStock() + Stock);
                return;
            }
        }
        CartPackage.add(new ShoppingCartItem(Package_ID, Name, Price, Stock));
    }

    // Update the quantity for the given id
    public boolean update(int Package_ID, int newQty) {
        Iterator<ShoppingCartItem> items = CartPackage.iterator();
        while (items.hasNext()) {
            ShoppingCartItem packages = items.next();
            if (packages.getId() == Package_ID) {
                packages.setStock(newQty);
                return true;
            }
        }
        return false;
    }

    // Remove a CartItem given its id
    public void remove(int Package_ID) {
        Iterator<ShoppingCartItem> items = CartPackage.iterator();
        while (items.hasNext()) {
            ShoppingCartItem packages = items.next();
            if (packages.getId() == Package_ID) {
                CartPackage.remove(packages);
                return;
            }
        }
    }

    public int size() {
        return CartPackage.size();
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public List<ShoppingCartItem> getItems() {
        return CartPackage;
    }
    public void clear() {
        CartPackage.clear();
    }
}
