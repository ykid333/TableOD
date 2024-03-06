package icia.TblOrders.sockUtil;

import java.io.IOException;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class PaySocketHandler extends TextWebSocketHandler {
	
	private WebSocketSession adminSession = null;
	
	private String payTableNumber = null;
	
	public String getPayTableNumber() {
		return payTableNumber;
	}

	public void setPayTableNumber(String payTableNumber) {
		this.payTableNumber = payTableNumber;
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		String connSession = (String)session.getAttributes().get("tbnumber");
		if(connSession != null && connSession.equals("admin")) {
			adminSession = session;
		} else {
			session.sendMessage(  new TextMessage(payTableNumber) );
		}
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		adminSession.sendMessage(  new TextMessage(payTableNumber) );
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String connSession = (String)session.getAttributes().get("tbnumber");
		if(connSession != null && connSession.equals("admin")) {
			adminSession = null;
		}
	}

	public void adminSendMessage(String tbnumber) throws Exception {
		adminSession.sendMessage(  new TextMessage(tbnumber) );
	}
	
	
}
