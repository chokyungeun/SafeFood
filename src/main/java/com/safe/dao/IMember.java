package com.safe.dao;

import java.util.List;

import com.safe.vo.Member;
import com.safe.vo.Menu;
import com.safe.vo.Menu2;
import com.safe.vo.Message;
import com.safe.vo.MyFood;
import com.safe.vo.MyMenu;

public interface IMember {
	public List<Member> selectAll();

	public boolean checkMember(String id, String pass);

	public void insert(Member m);
	
	public void update(Member b);

	public Member selectOne(String id);

	public void delete(String id);

	public List<MyFood> AllMyfood(String id);
	
	public void updateMyfood(MyFood mf);
	
	public void insertMyfood(MyFood mf);
	
	public void deleteMyfood(MyFood mf);
	
	public MyFood selectMyfood(MyFood mf);
	
	public List<Menu> AllMenu();
	
	public void Insertmenu(Menu m);
	
	public void Deletemenu(String code);
	
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
	
	public void countUpMessage(String num);
}