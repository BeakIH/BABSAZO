package com.babsazo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.babsazo.model.ListCommand;
import com.babsazo.service.ListService;

@Controller
public class MainController {
	
	@Autowired
	private ListService listService;

	@RequestMapping("/main/list/main.do")
	public ModelAndView intoMainPage(@RequestParam(defaultValue="1") int page) {
		ModelAndView mav = new ModelAndView();
		
		/*총 페이지 연산*/
		int pageSize = 10;
		int totalListCount = listService.getTotalListCount().get(0);
		int maxPage =0;
		if(totalListCount%pageSize >0) {
			maxPage = totalListCount/pageSize +1; 
		}else {
			maxPage = totalListCount/pageSize;
		}
		
		/*해당 페이지 게시판 리스트 연산*/
		if(page==0) {
			page = 1;
		}
		
		int startListIndex = (page -1)* pageSize;		
		int endListIndex = 0;
		if(page * 10 >totalListCount) {
			endListIndex = totalListCount;
		}else {
			endListIndex = page * pageSize;
		}
		
		/*페이징 번호 연산*/
		int pageRange = 5;
		int startPage = ((page-1)/pageRange + 1)* pageRange - (pageRange - 1);
		int endPage = ((page-1)/pageRange + 1) * pageRange; 
		if(endPage > maxPage) {		
			endPage = maxPage;
		}
		
		List<ListCommand> storeListInPage = new ArrayList<ListCommand>();
		for(int i=startListIndex;i<endListIndex;i++) {
			storeListInPage.add(listService.getAllStoreList().get(i));
		}
		
		mav.setViewName("main/list/main");
		mav.addObject("storeListInPage", storeListInPage);
		mav.addObject("maxPage", maxPage);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		
		System.out.println("intoMainPage() 확인");
		
		return mav;
		/*return "main/list/main";*/
	}
	
	/*// 없어도 될지 모름
	@RequestMapping("/main/list/list.do")
	public ModelAndView intoListPage(@RequestParam(defaultValue="1") int page) {
		ModelAndView mav = new ModelAndView();
		
		총 페이지 연산
		int pageSize = 10;
		int totalListCount = listService.getTotalListCount().get(0);
		int maxPage =0;
		if(totalListCount%pageSize >0) {
			maxPage = totalListCount/pageSize +1; 
		}else {
			maxPage = totalListCount/pageSize;
		}
		
		해당 페이지 게시판 리스트 연산
		if(page==0) {
			page = 1;
		}
		
		int startListIndex = (page -1)* pageSize;		
		int endListIndex = 0;
		if(page * 10 >totalListCount) {
			endListIndex = totalListCount;
		}else {
			endListIndex = page * pageSize;
		}
		
		페이징 번호 연산
		int pageRange = 5;
		int startPage = ((page-1)/pageRange + 1)* pageRange - (pageRange - 1);
		int endPage = ((page-1)/pageRange + 1) * pageRange; 
		if(endPage > maxPage) {		
			endPage = maxPage;
		}
		
		List<ListCommand> storeListInPage = new ArrayList<ListCommand>();
		for(int i=startListIndex;i<endListIndex;i++) {
			storeListInPage.add(listService.getAllStoreList().get(i));
		}
		
		mav.setViewName("main/list/list");
		mav.addObject("storeListInPage", storeListInPage);
		mav.addObject("maxPage", maxPage);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		return mav;
		return "main/list/list";
	}*/
}
