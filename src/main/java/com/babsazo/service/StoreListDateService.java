package com.babsazo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.babsazo.dao.StoreListDateDao;
import com.babsazo.model.MemSelectDateCommand;
import com.babsazo.model.MenuDataCommand;
import com.babsazo.model.SeatingCommand;
import com.babsazo.model.StoreListDateCommand;




@Component
public class StoreListDateService  {
	
	
	@Autowired
	private StoreListDateDao storeListDateDao;
	
	
	
	public List<StoreListDateCommand> selectOneStoreListDate(int store_no) {
		System.out.println("selectOneStoreListDate() 확인");
		return storeListDateDao.getStoreListData("storeList.selectOneStoreListDate" , store_no);
	}
	
	public List<MenuDataCommand> selectFoodMenu(int store_no){
		System.out.println("selectFoodMenu() 확인");
		return storeListDateDao.getStoreListData("storeList.selectFoodMenu", store_no);
	}
	
	public List<MemSelectDateCommand> selectMember(int mem_no){
		return storeListDateDao.getStoreListData("storeList.selectMember", mem_no);
	}
	
	public List<SeatingCommand> selectSeating(int store_no){
		return  storeListDateDao.getStoreListData("storeList.selectSeating", store_no);
	}
	
}
