package com.gulludada.harosys.user.service;

import com.gulludada.harosys.user.mvc.dto.LdapUserDto;
import com.gulludada.harosys.user.mvc.dto.UserDto;

public interface IUserService {
	
	public boolean validateUser(LdapUserDto ldapUserDto);

	public boolean saveUser(UserDto userDto);
	
	public String sendLinkToMailForForgotPassword(String userdetails);
}
