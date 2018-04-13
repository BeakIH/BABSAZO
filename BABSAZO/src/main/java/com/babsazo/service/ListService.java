package com.babsazo.service;

import org.springframework.stereotype.Component;
import com.babsazo.dao.ListDao;
import com.babsazo.model.ListCommand;
import com.babsazo.model.SearchDTO;

import java.util.List;

import org.springframework.beans.factory.annotation.*;

@Component
public class ListService {

	@Autowired
	private ListDao listDao;
	
	public List<ListCommand> getAllStoreList(){
		return listDao.getListData("list.allList");
	}
		
	public List<Integer> getTotalListCount() {
		return listDao.getListData("list.totalListCount");
	}
	
	//										기존 매개변수 boardNum
	public List<ListCommand> getDetailList(SearchDTO searchDto){
		return listDao.getListData("list.detailList",searchDto);
	}

	// count(*) 를 얻기위함이므로 int 타입 리턴데이터가 필요하기때문에 Integer
	public List<Integer> getDetailListCount(SearchDTO searchDto){
		return listDao.getListData("list.detailListCount",searchDto);
	}
	
	public List<ListCommand> getOneStore(int store_no){
		System.out.println("getOneStore() 확인");
		return listDao.getListData("list.detailOneList",store_no);
	}
	/*
	public void updateList(ListCommand listCommand) {
		listDao.getListData("list.updateList", listCommand);
	}
	
	public void deleteList(int listNum) {
		listDao.getListData("list.deleteList",listNum);
	}
	
	public void insertList(ListCommand listCommand) {
		listDao.getListData("list.insertList", listCommand);
	}
	
	public void insertListWithTime(ListCommand listCommand) {
		listDao.getListData("list.insertListWithTime", listCommand);
	}*/
}
