package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnUtils {
    public static Connection getConnection(){
        try{
            String dbURL = "jdbc:mysql://127.0.0.1:3306/JSP?serverTimezone=UTC";
            String dbID = "root";
            String dbPW = "1234abc";
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(dbURL,dbID,dbPW);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}