package com.babsazo.controller.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.babsazo.model.BookingDTO;
import com.babsazo.service.booking.BookingService;

@Controller
@RequestMapping()
public class BookingController {

		@Autowired
		private BookingService bookingService;
		
		public void setBookingService(BookingService bookingService) {
			this.bookingService = bookingService;
		}
		

		// 매장번호별 예약현황 조회
		@RequestMapping(value= "/admin2/StoreBookingList.do")
		public ModelAndView bookingList(int storeNo) {
			ModelAndView mav = new ModelAndView();
			List<BookingDTO> bkList = bookingService.selectStoreAll();
			mav.addObject("bklist",bkList);
			mav.setViewName("admin2/bookingList");
			System.out.println("매장번호별 조회");
			return mav;
		}

		// 접수된 예약건에 대한 매장관리자 예약접수 확인여부
		@RequestMapping(value = "/admin2/newBookingList.do")
		public String updateConfirmYn(int bkNo) {
			
			return "admin2/bookingList";

		}
		
}
