package icia.TblOrders.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import icia.TblOrders.dao.OrderDAO;
import icia.TblOrders.dto.OrderDTO;
import icia.TblOrders.dto.TableInfoDTO;

@Service
public class OrderService {
	
	@Autowired
	private OrderDAO oddao;

	public String registTableInfo(String tablenum) throws Exception{
		System.out.println("SERVICE - registTableInfo()");
		/* 1. 해당 테이블의 상태 조회 */
		TableInfoDTO tbinfo = oddao.selectTableState(tablenum);
		
		TableInfoDTO registInfo = new TableInfoDTO();// 테이블 정보 입력을 위한 객체
		registInfo.setTbnumber(tablenum);			 // 등록할 테이블 번호 저장
		
		String returnTbVisit = "1";
		
		if(tbinfo == null) { // 조회되는 테이블정보가 없을 경우
			registInfo.setTbvisit(returnTbVisit);
			
		} else if( tbinfo.getTbstate().equals("C")  ){ // 테이블정보가 조회되고 상태값이 완료 'C' 인경우
			int tbVisit = Integer.parseInt(  tbinfo.getTbvisit()  ) + 1;
			returnTbVisit = tbVisit + "";
			registInfo.setTbvisit(  returnTbVisit );
			
		} else { // 테이블정보가 조회되고 상태값이 입장 'E' 또는 주문'O' 인 경우
			System.out.println(tablenum+"번 테이블을 이용중인 손님 재접속");
			return tbinfo.getTbvisit();
		}
		
		/* 2. 새로 입장한 테이블 정보를 입력 */
		oddao.insertTableInfo(registInfo);
		System.out.println(tablenum+"번 테이블에 새로운 손님 접속");
		
		return returnTbVisit;
		
	}

	/* 주문정보 입력 기능 */
	public int registOrderInfo(ArrayList<OrderDTO> odInfoList) {
		System.out.println("SERVICE - registOrderInfo()");
		
		int insertResult = 0;
		String maxOdCode = oddao.selectMaxOdcode(); // "OD000"
		System.out.println("주문코드 생성 전 : " + odInfoList);
		for(OrderDTO odinfo : odInfoList) {
			/* 1. 주문코드 생성 */
			maxOdCode = genCode(maxOdCode);
			String odcode = maxOdCode;
			System.out.println("생성된 주문코드 : " + odcode);
			odinfo.setOdcode(odcode);//  odcode, mncode, odcount, tbnumber, tbvisit
			/* dao - insert문 호출 */
			//insertResult = oddao.insertOrderInfo( odinfo );
		}
		System.out.println("주문코드 생성 후 : " + odInfoList);		
		insertResult = oddao.insertAllOrderInfo(odInfoList);
		
		/* 주문한 테이블의 상태를 입장(E)에서 주문(O)로 수정 - UPDATE */
		
		
		return insertResult;
	}

	private String genCode(String oldCode) {     // "OD000"
		String strCode = oldCode.substring(0,2); // "OD"
		int numCode = Integer.parseInt( oldCode.substring(2) ) + 1; // 0 + 1
		return strCode + String.format("%03d", numCode); // "OD" + "001"
	}

	public ArrayList<HashMap<String, String>> getOrderList_table(String tbnumber, String tbvisit) {
		System.out.println("SERVICE - getOrderList_table()");
		return oddao.selectOrdersList_table(tbnumber, tbvisit);
	}
	
}













