package icia.TblOrders.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import icia.TblOrders.dao.AdminDAO;

@Service
public class AdminService {

	@Autowired
	private AdminDAO addao;
	
	public ArrayList< HashMap<String, String> > getTableOrderList(String tbnumber, String tbvisit){
		return addao.selectTableOrderList(tbnumber, tbvisit);
	}

	public String modOrderInfo(String odcode, int modCount) {
		return addao.updateOrderInfo(odcode, modCount)+"";
	}

	public int payTableOrder(String tbnumber) {
		// TODO Auto-generated method stub
		return addao.updateTableInfo(tbnumber);
	}

	public ArrayList<HashMap<String, String>> getPayOrderList(String tbnumber) {
		// TODO Auto-generated method stub
		return addao.selectPayOrderList(tbnumber);
	}
	
}





