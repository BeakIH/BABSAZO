package com.babsazo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.babsazo.model.ListCommand;
import com.babsazo.service.ListService;
import com.babsazo.model.SearchDto;

//데이터 검색에 사용되는 컨트롤러

@Controller
public class SearchListController {

	@Autowired
	private ListService listService;
	
	@RequestMapping("/main/list/list.do")
	public ModelAndView intoListPage(@Valid SearchDto searchDto, @RequestParam(defaultValue="1") int page, @RequestParam(defaultValue="", value="search", required=false) String search, @RequestParam(defaultValue="0", value="searchn", required=false) int searchn) {
		ModelAndView mav = new ModelAndView();
		
		// search 와 searchn 의 null 값처리 시작
		System.out.println("search 값 :"+search);
		System.out.println("searchn 값 :"+searchn);
		
		/*if(search=="" || searchn==0) {
			search = "";
			searchn = 0;
		}*/
		
		// search 와 searchn 의 null 값처리 끝
		
		searchDto.setSearch(search);
		searchDto.setSearchn(searchn);
		
		/*총 페이지 연산*/
		int pageSize = 10;
		// getDetailList() 에 넣을 파라미터 필요함 ( 검색어가 들어가야함 )
		int detailListCount = listService.getDetailListCount(searchDto).get(0);
		System.out.println("검색데이터 개수:"+detailListCount);
		int maxPage =0;
		if(detailListCount%pageSize >0) {
			maxPage = detailListCount/pageSize +1; 
		}else {
			maxPage = detailListCount/pageSize;
		}
		
		/*해당 페이지 게시판 리스트 연산*/
		if(page==0) {
			page = 1;
		}
		
		int startListIndex = (page -1)* pageSize;		
		int endListIndex = 0;
		if(page * 10 >detailListCount) {
			endListIndex = detailListCount;
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
		
		List<ListCommand> detailListInPage = new ArrayList<ListCommand>();
		for(int i=startListIndex;i<endListIndex;i++) {
			detailListInPage.add(listService.getDetailList(searchDto).get(i));
		}
		
		mav.setViewName("main/list/list");
		mav.addObject("storeListInPage", detailListInPage); // 데이터자체는 main 호출했을때와 다름 
		mav.addObject("searchDto", searchDto);
		mav.addObject("maxPage", maxPage);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		return mav;
		/*return "main/list/list";*/
	}
}
