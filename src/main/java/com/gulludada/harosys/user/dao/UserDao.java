package com.gulludada.harosys.user.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import com.gulludada.harosys.user.mvc.dto.LdapUserDto;
import com.gulludada.harosys.user.mvc.dto.UserDto;
@Service
public class UserDao implements IUserDao {
	
	 @Autowired
	    private SessionFactory sessionFactory;
	@Override
	public boolean validateUser(LdapUserDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean saveUser(UserDto user) {
		
		
		 Session session = sessionFactory.getCurrentSession();
		 //org.hibernate.Transaction t = session.beginTransaction();
	    	try{
	    
//	    	Query q = session.createSQLQuery("insert into UserDto (address, dateOfBirth, email, firstName, lastName, password, phoneNo, userName) values ('aag',11/11/1999,'aa', 'aa', '11/11/1999', 'abc@gmail.com','9999999999', 'abcD')");
//	    	q.executeUpdate();
	    	//	session.beginTransaction();
	    		session.save(user);
	    		
	    	//session.getTransaction().commit();
	    	return true;
	    	}
	    	catch (Exception e) { 
				System.out.println(e.toString());
			}
	    	/*finally
	    	{
	    		session.close();
	    		return true;
	    	}*/
	    	return false;
	}

	@Override
	public boolean verify(String text) {
		// TODO Auto-generated method stub
		
		Session session= sessionFactory.getCurrentSession();
		try{
			
			List<UserDto> user=session.createSQLQuery("select * from userdto where userName= '"+text+"' OR  email='"+text+"'").list();
			//List<UserDto> user=session.createSQLQuery("select * from userdto where userName= text  OR password=text  OR firstName=text  OR lastName=text OR  email=text OR  phoneNo=text OR  address=text").list();
			System.out.println(user.size());
			if(user.size()>0){
				return true; 
			}
			else{
				return false;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}

}
