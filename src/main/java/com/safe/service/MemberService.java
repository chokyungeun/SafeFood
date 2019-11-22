package com.safe.service;

import java.util.List;

import com.safe.vo.Member;
import com.safe.vo.Menu;
import com.safe.vo.Menu2;
import com.safe.vo.Message;
import com.safe.vo.MyFood;
import com.safe.vo.MyMenu;

public interface MemberService {
	public boolean checkMember(String id, String pass);

	public void insert(Member m);
	
	public void update(Member b);

	public Member selectOne(String id);

	public void delete(String id);
	
	public void deletelist(MyFood mf);

	public List<MyFood> AllMyfood(String id);
	
	public MyFood selectMyfood(MyFood mf);

	public void updateMyfood(String id, int code, int count);
	
	public List<Menu> AllMenu();
	
	public Menu SelectMenu(String code);
	
	public List<Menu> SearchMenu(String word);
	
	public void InsertMymenu(MyMenu mm);
	
	public void DeleteMymenu(String num);
	
	public List<Menu2> SelectMymenu(String id);
	
	public List<Message> AllReceivemessage(String receiveid);
	
	public List<Message> AllSendmessage(String sendid);
	
	public Message SelectMessage(String num);
	
	public void SendMessage(Message m);
	
	public void DeleteMessage(String num);
	
	
}
