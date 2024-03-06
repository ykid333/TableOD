package icia.TblOrders.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import icia.TblOrders.dto.OrderDTO;
import icia.TblOrders.service.OrderService;
import icia.TblOrders.sockUtil.TableSocketHandler;

@Controller
public class OrderController {

	@Autowired
	private HttpSession session;
	
	@Autowired
	private OrderService odsvc;
	
	@Autowired
	private TableSocketHandler tbsock;
	
	/* 주문 처리 요청 */
	@RequestMapping(value = "/orderSubmit")
	public @ResponseBody String orderSubmit(@RequestBody ArrayList<OrderDTO> odInfoList ) {
		System.out.println("주문 요청");
		System.out.println(odInfoList);
		/* SERVICE - 주문정보 입력 */
		int orderResult = odsvc.registOrderInfo(odInfoList);
		if(orderResult > 0) {
			System.out.println("주문 처리 성공!!");
			/* 관리자 페이지에 주문 메세지 전송 */
			
			return "Y";
		} else {
			System.out.println("주문 처리 실패!!");
			
			return "N";
		}
	}
	
	/* 테이블별 주문 내역 조회 요청 */
	@RequestMapping(value = "/getOrderList_table")
	public @ResponseBody String orderList_table(String tbnumber, String tbvisit) {
		System.out.println("주문내역 조회 요청");
		System.out.println("tbnumber : " + tbnumber + ", tbvisit : " + tbvisit);
		/* SERVICE - 주문내역 조회 기능 호출 */
		ArrayList< HashMap<String, String> > orderList = odsvc.getOrderList_table(tbnumber, tbvisit);
		System.out.println(orderList);
		return new Gson().toJson(orderList);
	}
	
	
}





















