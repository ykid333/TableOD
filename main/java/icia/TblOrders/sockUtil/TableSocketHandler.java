package icia.TblOrders.sockUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class TableSocketHandler extends TextWebSocketHandler{
	
	// 접속중인 테이블 목록 
	private ArrayList<WebSocketSession> connectTableList = new ArrayList<WebSocketSession> ();

	// 접속중인 관리자
	private WebSocketSession adminSession = null;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("클라이언트 접속");
		/* 접속된 클라이언트 저장 */
		/*테이블세션, 관리자세션인지 확인*/
		String tbnumber = (String) session.getAttributes().get("tbnumber");
		if(tbnumber.equals("admin")) {
			/* 관리자 세션인 경우 */
			System.out.println("관리자 접속");
			adminSession = session;
		} else {
			System.out.println("테이블 접속 " + connectTableList.size());
			/* 테이블 세션인 경우 */
			connectTableList.add(session);
			/* 관리자 페이지에 접속정보 전송 */
			if(adminSession != null) {
				JsonObject jobj = new JsonObject();
				jobj.addProperty("msgType", "conn");
				jobj.addProperty("tbnumber", tbnumber);
				adminSession.sendMessage( new TextMessage( new Gson().toJson(jobj)) );
			}
		}
		
	}
	/* TABLESOCKET */
	public void tableMessgeSend(String tbnumber) throws Exception {
		/* 해당 테이블에 메세지 전송 */
		for(WebSocketSession tblSession : connectTableList) {
			String tableNum = (String)tblSession.getAttributes().get("tbnumber");
			if(tbnumber.equals(tableNum)) {
				tblSession.sendMessage(  new TextMessage("결제완료") );
				break;
			}
		}
	}
	
	

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("클라이언트 메세지");
		String textMsg = message.getPayload();  
		System.out.println("테이블에서 전송한 메세지 : " + textMsg);
		/* JSON String >> JSON Object */
		
		
		/* 관리자 페이지 세션에 메세지 전송 */
		if(adminSession != null) {
			adminSession.sendMessage(  new TextMessage(textMsg)  );
		}
		
		
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("클라이언트 접속해제");
		/* 접속해제된 클라이언트 확인 */
		/*테이블세션, 관리자세션인지 확인*/
		String tbnumber = (String) session.getAttributes().get("tbnumber");
		if(tbnumber.equals("admin")) {
			/* 관리자 세션인 경우 */
			System.out.println("관리자 접속해제");
			adminSession = null;
		} else {
			/* 테이블 세션인 경우 */
			System.out.println("테이블 접속해제");
			connectTableList.remove(session);
			
		}	
	}


	/* 테이블 입장 유무 검증 */
	public boolean checkTable(String tbnumber) {
		boolean result = false;
		
		/* 접속중인 테이블 목록에 테이블 번호가 있는지 확인 */
		for( WebSocketSession connTbl : connectTableList ) {
			String connTbnumber = (String) connTbl.getAttributes().get("tbnumber");
			if(  connTbnumber.equals(tbnumber) ) {
				result = true;
				break;
			}
		}
		
		return result;
	}
	
	public void adminSendMessage() throws IOException {
		/* 관리자 페이지 세션에 주문 정보 메시지 전송 */
		adminSession.sendMessage( new TextMessage("보낼 메세지") );
		
	}
	
}

























