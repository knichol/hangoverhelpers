package enterprise.web_jpa_war.servlet;

import enterprise.web_jpa_war.entity.*;
import java.util.*;

public class ShoppingCart {

    private List<ShoppingCartItem> cart;  // List of CartItems

    // constructor
    public ShoppingCart() {
        cart = new ArrayList<ShoppingCartItem>();
    }

    // Add a CartItem into this Cart
    public void add(int Package_ID, String Name, float Price, int Stock) {
        // Check if the id is already in the shopping cart
        Iterator<ShoppingCartItem> iter = cart.iterator();
        while (iter.hasNext()) {
            ShoppingCartItem item = iter.next();
            if (item.getId() == Package_ID) {
                // id found, increase qtyOrdered
                item.setStock(item.getStock() + Stock);
                return;
            }
        }
        // id not found, create a new CartItem
        cart.add(new ShoppingCartItem(Package_ID, Name, Price, Stock));
    }

    // Update the quantity for the given id
    public boolean update(int Package_ID, int newQty) {
        Iterator<ShoppingCartItem> iter = cart.iterator();
        while (iter.hasNext()) {
            ShoppingCartItem item = iter.next();
            if (item.getId() == Package_ID) {
                // id found, increase qtyOrdered
                item.setStock(newQty);
                return true;
            }
        }
        return false;
    }

    // Remove a CartItem given its id
    public void remove(int Package_ID) {
        Iterator<ShoppingCartItem> iter = cart.iterator();
        while (iter.hasNext()) {
            ShoppingCartItem item = iter.next();
            if (item.getId() == Package_ID) {
                cart.remove(item);
                return;
            }
        }
    }

    // Get the number of CartItems in this Cart
    public int size() {
        return cart.size();
    }

    // Check if this Cart is empty
    public boolean isEmpty() {
        return size() == 0;
    }

    // Return all the CartItems in a List<CartItem>
    public List<ShoppingCartItem> getItems() {
        return cart;
    }

    // Remove all the items in this Cart
    public void clear() {
        cart.clear();
    }
}
