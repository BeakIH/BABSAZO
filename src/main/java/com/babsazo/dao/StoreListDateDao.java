package com.babsazo.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.babsazo.model.ListCommand;



public class StoreListDateDao extends SqlSessionDaoSupport{
	public List getStoreListData(String mapperId){
		List bList = getSqlSession().selectList(mapperId);
		return bList;
	}
	
	public List getStoreListData(String mapperId, int sendParam){
		List bList = getSqlSession().selectList(mapperId, sendParam);
		return bList;
	}	
	
	public List getStoreListData(String mapperId, ListCommand sendParam){
		List bList = getSqlSession().selectList(mapperId, sendParam);
		return bList;
	}
	

}
