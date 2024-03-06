package icia.TblOrders.dao;

import java.util.ArrayList;

import icia.TblOrders.dto.MenuDTO;

public interface MenuDAO {

	ArrayList<MenuDTO> selectMenuList();

	ArrayList< MenuDTO > selectMenuList_type( String menuType );

	ArrayList<MenuDTO> selectMenuList_search(String searchName);
}
