package com.babsazo.controller.register;

import org.mybatis.spring.support.SqlSessionDaoSupport;
public class JoinDAO extends SqlSessionDaoSupport {
	
	public void registerSignUp(JoinCommand command) {
		getSqlSession().update("registerInsert",command);
	}
	public void registerAddress(JoinZipCommand command) {
		getSqlSession().update("registerAddressInsert",command);
	}
	
}
