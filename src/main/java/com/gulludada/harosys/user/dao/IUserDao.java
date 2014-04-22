package com.gulludada.harosys.user.dao;

import com.gulludada.harosys.user.domain.User;
import com.gulludada.harosys.user.mvc.dto.LdapUserDto;

public interface IUserDao {
	public boolean validateUser(LdapUserDto dto);
	public User saveUser(User user);
}
