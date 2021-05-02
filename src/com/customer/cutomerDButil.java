package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class cutomerDButil {
    public static List<Customer> validate(String username,String password){
    	 
    	ArrayList<Customer>cus=new ArrayList<>();
    	
    	//create database connection
    	String url="jdbc:mysql://localhost:3306/firstdb";
    	String user="root";
    	String pass="abc123";
    	//validate
    	
    	try {
    		Class.forName("com.mysql.jbdc.Driver");
    		Connection conn=DriverManager.getConnection(url, user, pass);
    		Statement stst=conn.createStatement();
    		String sql="select * from customer where username='"+username+"'and password='"+password+"'";
    		ResultSet rs=stst.executeQuery(sql);
    		
    		if(rs.next()){//return true false boolean value {
    			int custID=rs.getInt(1); 
    			String name=rs.getString(2);
    			String usernm=rs.getString(3);
    			String email=rs.getString(4);
    			String pass1=rs.getString(5);
    			
    			Customer cust=new Customer(custID,name,usernm,email,pass1);
    			cus.add(cust);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	
    	return cus;
    	
    	
    	
    }
}
