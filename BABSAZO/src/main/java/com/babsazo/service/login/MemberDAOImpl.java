package com.babsazo.service.login;

import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.babsazo.model.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public boolean loginCheck(MemberDTO dto) {
		String name = sqlSession.selectOne("member.loginCheck", dto);
		return(name == null) ? false:true;
	}
	
	@Override
	public MemberDTO viewMember(MemberDTO dto) {
		return sqlSession.selectOne("member.viewMember", dto);
	}
	
	@Override
	public void logout(HttpSession sessin) {
		
	}
	
}
