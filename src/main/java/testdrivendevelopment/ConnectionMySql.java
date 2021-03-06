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
			//String url = "jdbc:mysql://127.0.0.1:3306/webcalendarDB?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&serverTimezone=GMT";
			//Connection con = DriverManager.getConnection(url, "admin", "Password02");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webcalendarDB", "admin", "Password02");
			System.out.println("connection successful");
			String query = "Select * from User";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()){
				System.out.println("UserID: "+rs.getString("UserID"));
			}
		} catch (Exception e) {
			System.err.println("Issue during database initiation: "+ e);
		}
	}
		
	public ConnectionMySql(){
		String drivername = "com.mysql.jdbc.Driver";
		try{
			Class driver_class = Class.forName(drivername);
			Driver driver = (Driver) driver_class.newInstance();
			DriverManager.registerDriver(driver);
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webcalendarDB", "admin", "Password02");
			//con = DriverManager.getConnection("jdbc:mysql://127.7.227.130:3306/testdrivendevelopment", "admin9lIqcSX", "tQb7J2VA3Ivz");
			System.out.println("connection successful test");
			
		} catch (Exception e) {
			System.out.println("connection NOT successful");
			System.err.println(e);
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
			System.err.println("Issue during running query: "+ e);
			e.printStackTrace();
			return null;
		}
		
	}

}