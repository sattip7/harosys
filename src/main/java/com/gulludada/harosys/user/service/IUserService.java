package com.gulludada.harosys.user.service;

import com.gulludada.harosys.user.mvc.dto.LdapUserDto;
import com.gulludada.harosys.user.mvc.dto.UserDto;

public interface IUserService {
	
	public boolean isAuthorized(LdapUserDto ldapUserDto);

	public UserDto saveUser(UserDto userDto);
}
