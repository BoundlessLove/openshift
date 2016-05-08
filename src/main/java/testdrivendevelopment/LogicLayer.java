package testdrivendevelopment;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;

public class LogicLayer {
	public ConnectionMySql dbcon;

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	public LogicLayer(){
		
		dbcon = new ConnectionMySql();
	}
	
	public String[] getAllUserIDs(){
		
		try{
		ResultSet rs1 = dbcon.RunQuery("Select count(*) from User");
		if (rs1 !=null && rs1.next()){
			String[] al = new String[rs1.getInt(1)];
			rs1.close();
			ResultSet rs2 = dbcon.RunQuery("Select * from User");
			if (rs2 !=null && rs2.next()){
				for(int i = 0; i<al.length; i++){
					al[i] = rs2.getString("UserID");
					rs2.next();
				}
			}
			return al;
		}
		} catch (Exception e) {
			System.err.println(e);
		}
		return null;
	}
	
	public boolean thisUserExists(String username, String password){
		
		try{
		String query = 	"Select * from credentials where UserName =\""+username+"\" and Password=\""+password+"\"";
		ResultSet rs1 = dbcon.RunQuery(query);
			if (rs1 !=null && rs1.next()){
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			System.err.println(e);
		}
		return false;
	}
		
	}
