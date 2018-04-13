package com.babsazo.controller.member;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.babsazo.controller.register.JoinCommand;
import com.babsazo.controller.register.JoinZipCommand;

public class MemberpageDAO  extends SqlSessionDaoSupport{

	public void memberInfoUpdate(JoinCommand command) {
			getSqlSession().update("memeberInfoUpdate",command);
		}
	
	public JoinCommand memeberInfo(JoinCommand command) {
			return getSqlSession().selectOne("loginSessionImformation",command);
		}
		
	
	public void memberInfoZipcodeUpdate(JoinZipCommand command) {
			getSqlSession().update("memberInfoZipcodeUpdate",command);
		}
	
}
