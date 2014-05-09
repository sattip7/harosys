package com.gulludada.harosys.user.dao;

import com.gulludada.harosys.user.domain.User;
import com.gulludada.harosys.user.mvc.dto.LdapUserDto;
import com.gulludada.harosys.user.mvc.dto.UserDto;

public interface IUserDao {
	public boolean validateUser(LdapUserDto dto);
	
	public boolean saveUser(UserDto user);

	public boolean verify(String text);
}
