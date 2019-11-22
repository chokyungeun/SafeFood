package com.safe.vo;

public class Message {
	private String num;
	private String sendid;
	private String receiveid;
	private String title;
	private String message;
	private String count;
	
	public Message() {}

	public Message(String num, String sendid, String receiveid, String title, String message, String count) {
		this.num = num;
		this.sendid = sendid;
		this.receiveid = receiveid;
		this.title = title;
		this.message = message;
		this.count = count;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getSendid() {
		return sendid;
	}

	public void setSendid(String sendid) {
		this.sendid = sendid;
	}

	public String getReceiveid() {
		return receiveid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setReceiveid(String receiveid) {
		this.receiveid = receiveid;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Message [num=" + num + ", sendid=" + sendid + ", receiveid=" + receiveid + ", title=" + title
				+ ", message=" + message + ", count=" + count + "]";
	}

	
	
}
