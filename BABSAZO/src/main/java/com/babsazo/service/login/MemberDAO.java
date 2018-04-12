package com.babsazo.service.login;

import javax.servlet.http.HttpSession;

import com.babsazo.model.MemberDTO;

public interface MemberDAO {
	
	public boolean loginCheck(MemberDTO dto);
	
	public MemberDTO viewMember(MemberDTO dto);
	
	public void logout(HttpSession session);

	
}
