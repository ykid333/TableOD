package icia.TblOrders.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import icia.TblOrders.service.OrderService;
import icia.TblOrders.sockUtil.PaySocketHandler;
import icia.TblOrders.sockUtil.TableSocketHandler;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(  ) {

		return "Home";
	}
	
	@RequestMapping(value = "/admin")
	public String admin() {
		session.setAttribute("tbnumber", "admin");
		return "AdminMain";
	}
	
	@RequestMapping(value = "/myTable")
	public String myTable(HttpServletRequest request) {
		String ipAddress = request.getHeader("X-Forwarded-For");
		if(ipAddress == null) {
			ipAddress = request.getRemoteAddr();
		}
		if(ipAddress.equals("0:0:0:0:0:0:0:1")) {
			ipAddress = "0.0.0.0";
		}
		System.out.println("접속아이피 :" + ipAddress);
		String[] splitIp = ipAddress.split("\\.");
		return "redirect:/visitTable?tablenum="+splitIp[splitIp.length -1 ];
	}
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private TableSocketHandler tbsock;
	
	@Autowired
	private OrderService odsvc;
	
	@RequestMapping(value = "/visitTable")
	public ModelAndView visitTable(String tablenum, RedirectAttributes ra) {
		System.out.println("테이블 접속 요청");
		System.out.println("입력한 테이블 번호 : " + tablenum);
		ModelAndView mav = new ModelAndView();
		if(tablenum == null) {
			ra.addFlashAttribute("msg", "잘못된 접속 요청입니다.");
			mav.setViewName("redirect:/");			
			return mav;
		}
		
		/* 입력한 테이블 번호로 접속이 가능한지 확인 */
		if( tbsock.checkTable(tablenum) ) {
			System.out.println("이미 접속중인 테이블번호");
			ra.addFlashAttribute("msg", "다른 번호를 입력 해주세요!");
			mav.setViewName("redirect:/");
			
		} else {
			/* SERVICE - 입장 테이블정보 조회 및 입력 */
			String tbvisit = null;
			try {
				tbvisit = odsvc.registTableInfo(tablenum);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(tbvisit != null) {
				session.setAttribute("tbnumber", tablenum);
				mav.addObject("tbvisit", tbvisit);
				mav.setViewName("VisitTable");
			} else {
				ra.addFlashAttribute("msg", "다시 시도해주세요!");
				mav.setViewName("redirect:/");
			}
		}
		return mav;
	}
	

	
}










