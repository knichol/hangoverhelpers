package enterprise.web_jpa_war.servlet;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class login extends HttpServlet {
 private Connection conn;
//    public static void main(String[] args) {
//        try {
//            String host = "danu2.it.nuigalway.ie";
//            String EMAIL = "Email";
//            String PASS = "Password";
//            conn = DriverManager.getConnection(host, EMAIL, PASS);
//        } catch (SQLException e) {
//            System.out.println(e.getMessage());
//        }
//    }
   
    private boolean logChck(String Email, String Password)
     {
      String query;
      boolean login = false;

        try {
//        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//        String filename = "D:/Sand/program/JavaNetbeans/AllCodesHere/TestingCode/src/TestingCode/HotMan2.accdb";
//        String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=";
//        database+= filename.trim() + ";DriverID=22;READONLY=true}"; 

        conn = DriverManager.getConnection( "danu2.it.nuigalway.ie" ,"mydb1127","mydb112739");

        query = "SELECT (Email, Password) FROM Customer WHERE (Email = "+Email+" AND Password = "+Password+")";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, Email);
        ps.setString(2, Password);
        ps.executeQuery();
        ResultSet rs = ps.executeQuery();

        String checkUser = rs.getString(1);
        String checkPass = rs.getString(2);

        if((checkUser.equals(Email)) && (checkPass.equals(Password)))
        {
            login = true;
        }
        else
        {
            login = false;
        }

        conn.close();  
      } 

       catch (Exception err) {
       System.out.println("ERROR: " + err);
       }                                                                      

    return login;
}
}
