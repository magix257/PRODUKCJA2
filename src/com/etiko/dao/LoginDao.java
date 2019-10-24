package com.etiko.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String sql = "select * from login where uname=? and pass=?";
	String url = "jdbc:postgresql://localhost:5432/navin";
	String username = "postgres";
	String password = "0";
	String param;
	
	public String check(String uname, String pass) throws Exception {


	Class.forName("org.postgresql.Driver");
	Connection con = DriverManager.getConnection(url, username, password);
	PreparedStatement st = con.prepareStatement(sql);
	st.setString(1, uname);
	st.setString(2, pass);
	ResultSet rs = st.executeQuery();
	
	if(rs.next())
	{
		param = rs.getString(4);
		return param;
	
	}
	else 
	{
	return "1";
	}
	
}
}