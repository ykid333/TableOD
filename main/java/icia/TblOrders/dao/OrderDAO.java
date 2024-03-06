package icia.TblOrders.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import icia.TblOrders.dto.OrderDTO;
import icia.TblOrders.dto.TableInfoDTO;

public interface OrderDAO {
	
	TableInfoDTO selectTableState(String tablenum);

	int insertTableInfo(TableInfoDTO registInfo);

	String selectMaxOdcode();

	int insertOrderInfo(OrderDTO odinfo);

	int insertAllOrderInfo( @Param("odInfoList") ArrayList<OrderDTO> odInfoList);
	
	ArrayList<HashMap<String, String>> selectOrdersList_table(@Param("tbnumber") String tbnumber, @Param("tbvisit") String tbvisit);


}















