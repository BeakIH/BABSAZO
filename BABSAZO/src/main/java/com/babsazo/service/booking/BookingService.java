package com.babsazo.service.booking;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.babsazo.model.BookingDTO;

public class BookingService extends SqlSessionDaoSupport {
	
	// 매장번호별 예약현황 조회
	public List<BookingDTO> selectStoreAll() {
		return getSqlSession().selectList("admin.selectBooking");
	}
	
	// 접수된 예약건에 대한 매장관리자 예약접수 확인여부
	public void updateConfirmYn(BookingDTO dto) {
		getSqlSession().update("admin.updateConfirmYn", dto);
	}
	
	
}
