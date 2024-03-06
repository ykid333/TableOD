package icia.TblOrders.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import icia.TblOrders.dao.MenuDAO;
import icia.TblOrders.dto.MenuDTO;

@Service
public class MenuService {
	
	@Autowired
	public MenuDAO mndao;
	
	public ArrayList< MenuDTO >  getMenuList(){
		System.out.println("service - 전체 메뉴 조회 기능");
		ArrayList<MenuDTO> menuList = mndao.selectMenuList();
		System.out.println(menuList);
		return menuList;
	}
	
	public ArrayList<  MenuDTO >  getMenuList_type( String menuType ){
		System.out.println("service - 종류별 메뉴 조회 기능");
		ArrayList<MenuDTO> menuList = mndao.selectMenuList_type(menuType);
		return menuList;
	}

	public ArrayList<MenuDTO> getMenuList_search(String searchName) {
		System.out.println("service - 검색어 메뉴 조회 기능");
		ArrayList<MenuDTO> menuList = mndao.selectMenuList_search(searchName);
		return menuList;
	}
	
	
}






