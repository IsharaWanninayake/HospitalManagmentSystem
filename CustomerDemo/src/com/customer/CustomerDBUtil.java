package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CustomerDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	public static List<Customer> validate(String userName, String password) {

		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		    String sql = "select * from customer where username= '"+userName+"' and password= '"+password+"'";
		    rs = stmt.executeQuery(sql);
		    
		    if(rs.next()) {
		    	int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				int age = rs.getInt(5);
				String address = rs.getString(6);
				String username = rs.getString(7);
				String pwd = rs.getString(8);
		    	
		    	Customer c = new Customer(id, name, email, phone, age, address, username, pwd);
		    	cus.add(c);
		    }
		    
		}    
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
    
	
	
	}	
	public static boolean insertcustomer(String name, String email, String phone, int age,String add,String username, String password) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		    String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+age+"','"+add+"','"+username+"','"+password+"')";
		    int rs = stmt.executeUpdate(sql);
		    
		    if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
		}
		catch (Exception e) {
			e.printStackTrace();
			
		}
		return isSuccess;
		
	}
public static boolean updatecustomer(String id, String name, String email, String phone, int age, String add, String username, String password) {
    	
    	boolean isSuccess = false;
		try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',age='"+age+"',address='"+add+"',username='"+username+"',password='"+password+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
public static List<Customer> getCustomerDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			int age = rs.getInt(5);
			String address = rs.getString(6);
			String username = rs.getString(7);
			String password = rs.getString(8);
			
			
			Customer c = new Customer(id, name, email, phone, age, address, username, password);
			cus.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return cus;	
	}

public static boolean deleteCustomer(String id) {
	
	int convId = Integer.parseInt(id);
	
	boolean isSuccess = false;
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from customer where id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


}