package com.babsazo.dao;

import java.util.*;

import org.mybatis.spring.support.*;

import com.babsazo.model.*;

public class ListDao extends SqlSessionDaoSupport{
	public List getListData(String mapperId){
		List bList = getSqlSession().selectList(mapperId);
		return bList;
	}
	
	public List getListData(String mapperId, SearchDto searchDto){
		List bList = getSqlSession().selectList(mapperId, searchDto);
		return bList;
	}
	//
	public List getListData(String mapperId, int sendParam){
		List bList = getSqlSession().selectList(mapperId, sendParam);
		return bList;
	}		
	//
	public List getListData(String mapperId, ListCommand sendParam){
		List bList = getSqlSession().selectList(mapperId, sendParam);
		return bList;
	}	
}
