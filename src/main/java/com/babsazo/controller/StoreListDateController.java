package com.babsazo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.babsazo.model.MenuDataCommand;
import com.babsazo.model.SeatingCommand;
import com.babsazo.model.StoreListDateCommand;
import com.babsazo.service.StoreListDateService;



@Controller
public class StoreListDateController {
		
	@Autowired
	private StoreListDateService storeListDateService;
	
	
	/*@ModelAttribute
	public StoreListDateCommand reserveDateCommand() {
		return new StoreListDateCommand();
	}*/
	
	
	@RequestMapping("/main/list/list_info.do")
	public ModelAndView listInfoPage(@RequestParam int store_no){
		
	
		
		System.out.println("store_no=" + store_no);
		
		ModelAndView mav = new ModelAndView();
		//store_list 가져오기
		List<StoreListDateCommand> storeListInfo = new ArrayList<StoreListDateCommand>();
		storeListInfo.add(storeListDateService.selectOneStoreListDate(store_no).get(0));
		
		
		//preorder 가져오기
		List<MenuDataCommand> menuList = storeListDateService.selectFoodMenu(store_no);
		
		mav.setViewName("main/list/list_info");
		mav.addObject("menuList" , menuList);
		mav.addObject("storeListInfo", storeListInfo);
		return mav;

	}
	
	@RequestMapping("/main/list/reserve.do")
	public ModelAndView reservePage(@RequestParam int store_no){
		ModelAndView mav = new ModelAndView();
		
		//store_list 가져오기
		List<StoreListDateCommand> storeListInfo = new ArrayList<StoreListDateCommand>();
		storeListInfo.add(storeListDateService.selectOneStoreListDate(store_no).get(0));
		
		//preorder 가져오기
		List<MenuDataCommand> menuList = storeListDateService.selectFoodMenu(store_no);
		
		//seating 가져오기
		List<SeatingCommand> seatingList = storeListDateService.selectSeating(store_no);
		
		/*//member 가져오기
		List<MemSelectDateCommand> memList = new ArrayList<MemSelectDateCommand>();
		List<MemSelectDateCommand> MemList = storeListDateService.selectMember(mem_no);
		memList.add(storeListDateService.selectMember(mem_no).get(0));*/
		mav.setViewName("main/list/reserve");
		mav.addObject("menuList" , menuList);
		mav.addObject("seatingList" , seatingList);
		mav.addObject("storeListInfo", storeListInfo);
		/*mav.addObject("memList", memList);*/
		return mav;
	}
		
	
}
