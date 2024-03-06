package icia.TblOrders.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import icia.TblOrders.service.AdminService;
import icia.TblOrders.sockUtil.PaySocketHandler;
import icia.TblOrders.sockUtil.TableSocketHandler;

@Controller
public class AdminController {

	@Autowired
	private AdminService adsvc;
	
	
	@RequestMapping(value = "/getTableOrderListALL")
	public @ResponseBody String getTableOrderListALL() {
		System.out.println("전체 주문내역 조회");
		return new Gson().toJson(adsvc.getTableOrderList(null, null));
	}
	
	@RequestMapping(value = "/getTableOrderList")
	public @ResponseBody String getTableOrderList(String tbnumber, String tbvisit) {
		System.out.println("테이블 별 주문 내역 조회");
		System.out.println("tbnumber : " + tbnumber+" , tbvisit : " + tbvisit);
		return new Gson().toJson(adsvc.getTableOrderList(tbnumber, tbvisit));
	}
	
	@RequestMapping(value = "/cancelOrder")
	public @ResponseBody String cancelOrder(String odcode, int modCount) {
		System.out.println("취소할 주문코드 : " + odcode);
		System.out.println("취소할 주문수량 : " + modCount);
		return adsvc.modOrderInfo(odcode, modCount);
	}
	
	@Autowired
	private TableSocketHandler tblsock;
	
	@RequestMapping(value = "/orderPay")
	public @ResponseBody String orderPay(String tbnumber) {
		/* 테이블 상태 변경 - service UPDATE */
		int updateTable = adsvc.payTableOrder(tbnumber);
		if(updateTable > 0) {
			try {
				/* tableSock 테이블 메세지 전송 기능 호출 */
				tblsock.tableMessgeSend(tbnumber);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return updateTable+"";
	}
	
	@Autowired
	private PaySocketHandler paySock;
	
	@RequestMapping(value = "/payReady")
	public ModelAndView payReady(String tbnumber) {
		paySock.setPayTableNumber(tbnumber);
		ModelAndView mav = new ModelAndView("PayReady");
		ArrayList<HashMap<String,String>> orderList = adsvc.getPayOrderList(tbnumber);
		mav.addObject("orderList", orderList);
		return mav;
	}
		
	@RequestMapping(value = "/userPay")
	public @ResponseBody String userPay() {
		try {
			paySock.adminSendMessage();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Success";
	}

}












