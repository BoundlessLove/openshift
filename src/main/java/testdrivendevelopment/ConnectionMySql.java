package testdrivendevelopment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import com.mysql.jdbc.Driver;
//import com.mysql.jdbc.Statement;

public class ConnectionMySql {

	public Connection con;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
			
		try{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webcalendarDB", "root", "admin");
			System.out.println("connection successful");
			String query = "Select * from User";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()){
				System.out.println("UserID: "+rs.getString("UserID"));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}
		
	public ConnectionMySql(){
		String drivername = "com.mysql.jdbc.Driver";
		try{
			Class driver_class = Class.forName(drivername);
			Driver driver = (Driver) driver_class.newInstance();
			DriverManager.registerDriver(driver);
			con = DriverManager.getConnection("jdbc:mysql://127.7.227.130:3306/testdrivendevelopment", "admin9lIqcSX", "tQb7J2VA3Ivz");
			System.out.println("connection successful test");
			
		} catch (Exception e) {
			System.err.println(e);
			System.out.println("connection NOT successful");
		}
	}
	
	public ResultSet RunQuery(String query){
		Statement stmt;
		ResultSet rs;
		try{
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			return rs;
		} catch (Exception e) {
			System.err.println(e);
			return null;
		}
		
	}

}