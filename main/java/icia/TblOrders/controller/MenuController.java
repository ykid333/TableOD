package icia.TblOrders.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import icia.TblOrders.dto.MenuDTO;
import icia.TblOrders.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	private MenuService mnsvc;
	
	@RequestMapping(value = "/getMenuList")
	public @ResponseBody String getMenuList() {
		System.out.println("/getMenuList 요청");
		/* SERVICE - 전체 메뉴 목록 조회 기능 호출 */
		ArrayList<MenuDTO> menuList = mnsvc.getMenuList();
		
		/* ArrayList  >>  JSON 변환 - GSON 라이브러리 */
		Gson gson = new Gson();
		String responseData = gson.toJson(menuList);
		
		return responseData;
	}
	
	/* 종류별 메뉴 조회 요청 */
	@RequestMapping(value = "/getMenuList_Type")
	public @ResponseBody String getMenuList_type( String menuType ) {
		System.out.println("/getMenuList_Type 요청");
		System.out.println("조회할 메뉴 종류 : " + menuType);
		/* SERVICE - 종류별 메뉴 조회 기능 호출 */
		ArrayList< MenuDTO > menuList = mnsvc.getMenuList_type(menuType);
		
		/* ArrayList  >>  JSON 변환 - GSON 라이브러리 */
		String responseData = new Gson().toJson(menuList);
		return responseData;
	}
	
	/* 검색 메뉴 조회 요청 */
	@RequestMapping(value = "/getMenuList_search")
	public @ResponseBody String getMenuList_search( String searchName ) {
		System.out.println("/getMenuList_search 요청");
		System.out.println("검색할 메뉴 이름 : " + searchName);
		/* SERVICE - 검색어 메뉴 조회 기능 호출 */
		ArrayList<MenuDTO> menuList = mnsvc.getMenuList_search(searchName);
		
		/* ArrayList  >>  JSON 변환 - GSON 라이브러리 */
		String responseData = new Gson().toJson(menuList);
		return responseData;
	}
	
	
}














