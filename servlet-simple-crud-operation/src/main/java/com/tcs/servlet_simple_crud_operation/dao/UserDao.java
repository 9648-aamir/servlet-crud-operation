package com.tcs.servlet_simple_crud_operation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.tcs.servlet_simple_crud_operation.connection.UserConnection;
import com.tcs.servlet_simple_crud_operation.dto.User;

public class UserDao {
	Connection connection=UserConnection.getUserConnection();
	private final String INSERTUSERQUERY="insert into user1(id,name,email,dob,gender,password) value(?,?,?,?,?,?)";
	private final String DISPLAYALLUSERQUERY="select * from user1";
	private final String DELETEUSERBYIDQUERY="delete from user1 where id=?";
	private final String USEREMAILQUERY="select * from user1 where email=?";
	private final String DISPLAYUSERBYIDQUERY="select * from user1 where id=?";
	

	public UserDao() {
	   }
	
	public User saveUserDao(User user) {
		
		try {
			PreparedStatement ps=connection.prepareStatement(INSERTUSERQUERY);
			ps.setInt(1, user.getId());
			ps.setString(2, user.getName());
			ps.setString(3, user.getEmail());
			ps.setObject(4, user.getDob());
			ps.setString(5, user.getGender());
			ps.setString(6, user.getPassword());
			
			int a=ps.executeUpdate();
			String msg=a!=0?"DATA_STORED":"Please check your code";
			
			System.out.println(msg);
			return user;
			} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int deleteUserByIdDao(int userId) {
		try {
			PreparedStatement ps=connection.prepareStatement(DELETEUSERBYIDQUERY);
			ps.setInt(1, userId);
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	
	public User getUserByEmailDao(String userEmail) {
		try {
			PreparedStatement ps=connection.prepareStatement(USEREMAILQUERY);
			ps.setString(1, userEmail);
			ResultSet set = ps.executeQuery();
			
			 User user=null;
			if(set.next()) {
				
                String email = set.getString("email");
                String password=set.getString("password");
                user= new User(email, password);
                return user;
			}else {
				return null;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
}


public List <User> getAllUserDao(){
	
	try {
		PreparedStatement ps=connection.prepareStatement(DISPLAYALLUSERQUERY);
		ResultSet set=ps.executeQuery();
		
		List<User> users=new ArrayList<User>();
		
		while(set.next()) {
			int id=set.getInt("id");
			String name=set.getString("name");
			String email=set.getString("email");
			LocalDate dob=set.getDate("dob").toLocalDate();
			String gender=set.getString("gender");
//			String password=set.getString("password");
			
			User user= new User(id, name, email, dob, gender);
			users.add(user);
		}
		return users;
	} catch (SQLException e) {
		e.printStackTrace();
		return null;
	}
  }

public User getUserByIdDao(int userId){
	
	try {
		PreparedStatement ps=connection.prepareStatement(DISPLAYUSERBYIDQUERY);
		ps.setInt(1, userId);
		ResultSet set=ps.executeQuery();
		
		if(set.next()) {
			int id=set.getInt("id");
			String name=set.getString("name");
			String email=set.getString("email");
			LocalDate dob=set.getDate("dob").toLocalDate();
			String gender=set.getString("gender");
//			String password=set.getString("password");
			
			User user= new User(id, name, email, dob, gender);
			return user;
		}else {
			return null;
		}
	} catch (SQLException e) {
		e.printStackTrace();
		return null;
	}
  }
}