package com.gulludada.harosys.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gulludada.harosys.user.dao.IUserDao;
import com.gulludada.harosys.user.mvc.dto.LdapUserDto;
import com.gulludada.harosys.user.mvc.dto.UserDto;

@Service
public class UserService implements IUserService {
	
	@Autowired
	IUserDao userDao;
	
	@Override
	@Transactional
	public boolean validateUser(LdapUserDto ldapUserDto) {
		// TODO Auto-generated method stub
		
		if(ldapUserDto.getUserName()=="gullu"){
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public boolean saveUser(UserDto userDto) {
		// TODO Auto-generated method stub
		
//		UserDto dto = new UserDto();
//		dto.setUserName("gullu");
//		dto.setEmail("gullu@gmail.com");
//		return dto;
		
		return userDao.saveUser(userDto);
	}

	@Override
	@Transactional
	public String sendLinkToMailForForgotPassword(String userdetails) {
		// TODO Auto-generated method stub
		
		if(userdetails.equals("gullu") || userdetails.equals("gullu@gmail.com"))
		return "SENT";
		else
		return "NOT_SENT";
	}

}
