package enterprise.web_jpa_war.servlet;
import enterprise.web_jpa_war.entity.*;
import java.util.*;
/**
 * The Cart class models the shopping cart, which contains CartItem.
 * It also provides method to add() and remove() a CartItem.
 */
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
//
//import enterprise.web_jpa_war.entity.ShoppingCartItem;
//import enterprise.web_jpa_war.entity.Packages;
//import java.util.*;
//
//public class ShoppingCart {
//
//    List<ShoppingCartItem> items;
//    int numberOfItems;
//    double total;
//
//    public ShoppingCart() {
//        items = new ArrayList<ShoppingCartItem>();
//        numberOfItems = 0;
//        total = 0;
//    }
//
//    /**
//     * Adds a <code>ShoppingCartItem</code> to the <code>ShoppingCart</code>'s
//     * <code>items</code> list. If item of the specified <code>product</code>
//     * already exists in shopping cart list, the quantity of that item is
//     * incremented.
//     *
//     * @param product the <code>Product</code> that defines the type of shopping cart item
//     * @see ShoppingCartItem
//     */
//    public synchronized void addItem(Packages product) {
//
//        boolean newItem = true;
//
//        for (ShoppingCartItem scItem : items) {
//
//            if (scItem.getProduct().getPackageID() == product.getPackageID()) {
//                newItem = false;
//                scItem.incrementQuantity();
//            }
//        }
//
//        if (newItem) {
//            ShoppingCartItem scItem = new ShoppingCartItem(product);
//            items.add(scItem);
//        }
//    }
//
//    /**
//     * Updates the <code>ShoppingCartItem</code> of the specified
//     * <code>product</code> to the specified quantity. If '<code>0</code>'
//     * is the given quantity, the <code>ShoppingCartItem</code> is removed
//     * from the <code>ShoppingCart</code>'s <code>items</code> list.
//     *
//     * @param product the <code>Product</code> that defines the type of shopping cart item
//     * @param quantity the number which the <code>ShoppingCartItem</code> is updated to
//     * @see ShoppingCartItem
//     */
//    public synchronized void update(Packages product, String quantity) {
//
//        short qty = -1;
//
//        // cast quantity as short
//        qty = Short.parseShort(quantity);
//
//        if (qty >= 0) {
//
//            ShoppingCartItem item = null;
//
//            for (ShoppingCartItem scItem : items) {
//
//                if (scItem.getProduct().getPackageID() == product.getPackageID()) {
//
//                    if (qty != 0) {
//                        // set item quantity to new value
//                        scItem.setQuantity(qty);
//                    } else {
//                        // if quantity equals 0, save item and break
//                        item = scItem;
//                        break;
//                    }
//                }
//            }
//
//            if (item != null) {
//                // remove from cart
//                items.remove(item);
//            }
//        }
//    }
//
//    /**
//     * Returns the list of <code>ShoppingCartItems</code>.
//     *
//     * @return the <code>items</code> list
//     * @see ShoppingCartItem
//     */
//    public synchronized List<ShoppingCartItem> getItems() {
//
//        return items;
//    }
//
//    /**
//     * Returns the sum of quantities for all items maintained in shopping cart
//     * <code>items</code> list.
//     *
//     * @return the number of items in shopping cart
//     * @see ShoppingCartItem
//     */
//    public synchronized int getNumberOfItems() {
//
//        numberOfItems = 0;
//
//        for (ShoppingCartItem scItem : items) {
//
//            numberOfItems += scItem.getQuantity();
//        }
//
//        return numberOfItems;
//    }
//
//    /**
//     * Returns the sum of the product price multiplied by the quantity for all
//     * items in shopping cart list. This is the total cost excluding the surcharge.
//     *
//     * @return the cost of all items times their quantities
//     * @see ShoppingCartItem
//     */
//    public synchronized double getSubtotal() {
//
//        double amount = 0;
//
//        for (ShoppingCartItem scItem : items) {
//
//            Packages product = (Packages) scItem.getProduct();
//            amount += (scItem.getQuantity() * product.getPrice().doubleValue());
//        }
//
//        return amount;
//    }
//
//    /**
//     * Calculates the total cost of the order. This method adds the subtotal to
//     * the designated surcharge and sets the <code>total</code> instance variable
//     * with the result.
//     *
//     * @param surcharge the designated surcharge for all orders
//     * @see ShoppingCartItem
//     */
//    public synchronized void calculateTotal(String surcharge) {
//
//        double amount = 0;
//
//        // cast surcharge as double
//        double s = Double.parseDouble(surcharge);
//
//        amount = this.getSubtotal();
//        amount += s;
//
//        total = amount;
//    }
//
//    /**
//     * Returns the total cost of the order for the given
//     * <code>ShoppingCart</code> instance.
//     *
//     * @return the cost of all items times their quantities plus surcharge
//     */
//    public synchronized double getTotal() {
//
//        return total;
//    }
//
//    /**
//     * Empties the shopping cart. All items are removed from the shopping cart
//     * <code>items</code> list, <code>numberOfItems</code> and
//     * <code>total</code> are reset to '<code>0</code>'.
//     *
//     * @see ShoppingCartItem
//     */
//    public synchronized void clear() {
//        items.clear();
//        numberOfItems = 0;
//        total = 0;
//    }
//
//}
