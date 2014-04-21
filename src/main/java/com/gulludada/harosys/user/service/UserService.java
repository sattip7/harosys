package com.gulludada.harosys.user.service;

import com.gulludada.harosys.user.mvc.dto.LdapUserDto;
import com.gulludada.harosys.user.mvc.dto.UserDto;

public class UserService implements IUserService {

	@Override
	public boolean validateUser(LdapUserDto ldapUserDto) {
		// TODO Auto-generated method stub
		
		if(ldapUserDto.getUserName()=="gullu"){
			return true;
		}
		return false;
	}

	@Override
	public UserDto saveUser(UserDto userDto) {
		// TODO Auto-generated method stub
		
		UserDto dto = new UserDto();
		dto.setUserName("gullu");
		dto.setEmail("gullu@gmail.com");
		return dto;
	}

	@Override
	public String sendLinkToMailForForgotPassword(String userdetails) {
		// TODO Auto-generated method stub
		
		if(userdetails.equals("gullu") || userdetails.equals("gullu@gmail.com"))
		return "SENT";
		else
		return "NOT_SENT";
	}

}
