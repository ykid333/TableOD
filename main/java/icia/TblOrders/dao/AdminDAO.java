package icia.TblOrders.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

public interface AdminDAO {

	ArrayList<HashMap<String, String>> selectTableOrderList( @Param("tbnumber") String tbnumber, @Param("tbvisit") String tbvisit);

	int updateOrderInfo( @Param("odcode") String odcode, 
			             @Param("modCount") int modCount);

	int updateTableInfo(String tbnumber);

	ArrayList<HashMap<String, String>> selectPayOrderList(String tbnumber);

}




















