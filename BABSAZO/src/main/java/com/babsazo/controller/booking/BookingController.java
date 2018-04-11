package com.babsazo.controller.booking;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.babsazo.model.BookingDTO;
import com.babsazo.service.booking.BookingService;

@Controller
public class BookingController {

		private BookingService bookingService;
		
		// 매장번호별 예약현황 조회
		@RequestMapping(value= "/admin/StoreBookingList.do")
		public String bookingList(Model model) {
			List<BookingDTO> bkList = bookingService.selectAll();
			model.addAttribute("list", bkList);
			return "admin/bookingList";
		}
		
		// 접수된 예약건에 대한 매장관리자 예약접수 확인여부
		@RequestMapping(value = "/admin/newBookingList.do")
		public String updateConfirmYn(BookingDTO dto) {
			int bkNo = dto.getBkNo();
			bookingService.updateConfirmYn(dto);
			System.out.println("우왕");
			return "admin/bookingList";
		}
		
}
