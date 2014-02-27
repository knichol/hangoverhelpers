/**
 * @author Kevin
 */

package enterprise.web_jpa_war.entity;
public class ShoppingCartItem {
 
   private int Package_ID;
   private String Name;
   private float Price;
   private int Stock;
 
   // Constructor
   public ShoppingCartItem(int Package_ID, String Name, float Price, int Stock) {
      this.Package_ID = Package_ID;
      this.Name = Name;
      this.Price = Price;
      this.Stock = Stock;
   }
 
   public int getId() {
      return Package_ID;
   }
   public String getName() {
      return Name;
   }
 
   public float getPrice() {
      return Price;
   }
 
   public int getStock() {
      return Stock;
   }
 
   public void setStock(int Stock) {
      this.Stock = Stock;
   }
}