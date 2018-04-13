package com.babsazo.controller.member;

import java.io.File;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import com.babsazo.controller.register.JoinCommand;

@Controller
@RequestMapping("/myPage")
public class MemberpageController {
	
	private MemberpageDAO dao;
	
	@Autowired
	public void setDao(MemberpageDAO dao) {
		this.dao = dao;
	}

	//회원
	@RequestMapping("/memberMypage.do")
	public String memberMypage() {
		return "memberMypage";
	}
	
	//마이페이지 정보수정 
	@RequestMapping(value="/memberMypageInfomodify.do",method=RequestMethod.GET)
	public String memberMypageInfomodify() {
		return "memberMypageInfomodify";
	}
	@RequestMapping(value="/memberMypageInfomodify.do",method=RequestMethod.POST)
	public String memberMypageInfomodifyPro(JoinCommand command,HttpServletRequest request,HttpSession session) {
		infoUpdate(command, request, session);
		return "memberMypage";
	}
	 
	//마이페이지
	@RequestMapping("/memberMypagePay.do")
	public String memberMypagePay() {
		return "memberMypagePay";
	}
	
	@RequestMapping("/memberMypageProject.do")
	public String memberMypageProject() {
		return "memberMypageProject";
	}
	
	@RequestMapping("/memberMypageRequest.do")
	public String memberMypageRequest() {
		return "memberMypageRequest";
	}
	@RequestMapping("/memberMypageSelectList.do")
	public String memberMypageSelectList() {
		return "memberMypageSelectList";
	}
	
	//관리자
	@RequestMapping("/proMemberMypage.do")
	public String proMemberMypage() {
		return "proMemberMypage";
	}
					  
	//관리자 정보 수정
	@RequestMapping(value="/proMypageInfomodify.do",method=RequestMethod.GET)
	public String proMypageInfomodify() {
		return "proMypageInfomodify";
	}
	@RequestMapping(value="/proMypageInfomodify.do",method=RequestMethod.POST)
	public String proMypageInfomodifyPro(JoinCommand command , HttpServletRequest request, HttpSession session) {
		infoUpdate(command, request, session);
		return "memberMypage";
	}
	
	
	@RequestMapping("/proMypageIncome.do")
	public String proMypageIncome() {
		return "proMypageIncome";
	}
	
	@RequestMapping("/proMypageProject.do")
	public String proMypageProject() {
		return "proMypageProject";
	}
	@RequestMapping("/proMypageRequest.do")
	public String proMypageRequest() {
		return "proMypageRequest";
	}
	@RequestMapping("/proMypagePortfolio.do")
	public String proMypagePortfolio() {
		return "proMypagePortfolio";
	}

	//내정보 수정 메서드
	public void infoUpdate(JoinCommand command , HttpServletRequest request, HttpSession session) {
		Random random = new Random();
		MultipartFile fileUpload = command.getImageFile();
		String filePath =request.getSession().getServletContext().getRealPath("profileImage");
		String mem_fileName =System.currentTimeMillis()+"_"+random.nextInt(50)+fileUpload.getOriginalFilename();
		String mem_path =request.getContextPath()+"/profileImage/";
		try {
			// 이전파일삭제
			JoinCommand oldCommand = dao.memeberInfo(command);
			if(!(oldCommand.getMem_fileName().equals("baseImage.jpg"))) {
				File oldFile = new File(filePath+"/"+oldCommand.getMem_fileName());
				oldFile.delete();
			}
			
					File file = new File(filePath+"/"+mem_fileName);
			command.setMem_path(mem_path);
			command.setMem_fileName(mem_fileName);
			
			fileUpload.transferTo(file);
			

			dao.memberInfoUpdate(command);
			command.getZipcodeCommand().setMemberNo(command.getMemberNo());
			dao.memberInfoZipcodeUpdate(command.getZipcodeCommand());
			if(command.getMemberType().equals("회원")) {
				
			}else if(command.getMemberType().equals("관리자")) {
				
			}
	
			JoinCommand newMemberSession = dao.memeberInfo(command);
			newMemberSession.setZipcodeCommand(command.getZipcodeCommand());
			session.setAttribute("MemberSession",newMemberSession);
			
		} catch (Exception e) { e.printStackTrace();}
	}
}
