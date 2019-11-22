package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.IMember;
import com.safe.vo.Member;
import com.safe.vo.Menu;
import com.safe.vo.Menu2;
import com.safe.vo.Message;
import com.safe.vo.MyFood;
import com.safe.vo.MyMenu;

@Service("mservice")
public class MemberServiceImpl implements MemberService{
	@Autowired
	IMember mdao;
	
	@Autowired
	FoodService fservice;
	
	@Override
	public boolean checkMember(String id, String pass) {
		return mdao.checkMember(id, pass);
	}

	@Override
	public void insert(Member m) {
		mdao.insert(m);
	}

	@Override
	public void update(Member b) {
		mdao.update(b);
	}

	@Override
	public Member selectOne(String id) {
		return mdao.selectOne(id);
	}

	@Override
	public void delete(String id) {
		mdao.delete(id);
	}

	@Override
	public List<MyFood> AllMyfood(String id) {
		return mdao.AllMyfood(id);
	}
	public MyFood selectMyfood(MyFood mf) {
		return mdao.selectMyfood(mf);
	}

	@Override
	public void updateMyfood(String id, int code, int count) {
		MyFood mf = new MyFood(id,code,count);
		MyFood mf2 = mdao.selectMyfood(mf);
		if(mf2 == null) {
			mdao.insertMyfood(mf);
		}else {
			mf2.setCount(mf2.getCount()+count);
		}
		mdao.updateMyfood(mf2);
	}

	@Override
	public void deletelist(MyFood mf) {
		mdao.deleteMyfood(mf);
		
	}

	@Override
	public List<Menu> AllMenu() {
		return mdao.AllMenu();
	}

	@Override
	public Menu SelectMenu(String code) {
		return mdao.SelectMenu(code);
	}

	@Override
	public List<Menu> SearchMenu(String word) {
		return mdao.SearchMenu(word);
	}

	@Override
	public void InsertMymenu(MyMenu mm) {
		mdao.InsertMymenu(mm);
	}

	@Override
	public void DeleteMymenu(String num) {
		mdao.DeleteMymenu(num);
	}

	@Override
	public List<Menu2> SelectMymenu(String id) {
		return mdao.SelectMymenu(id);
	}

	@Override
	public List<Message> AllReceivemessage(String receiveid) {
		return mdao.AllReceivemessage(receiveid);
	}

	@Override
	public List<Message> AllSendmessage(String sendid) {
		return mdao.AllSendmessage(sendid);
	}

	@Override
	public Message SelectMessage(String num) {
		return mdao.SelectMessage(num);
	}

	@Override
	public void SendMessage(Message m) {
		mdao.SendMessage(m);
	}

	@Override
	public void DeleteMessage(String num) {
		mdao.DeleteMessage(num);
	}

	@Override
	public void countUpMessage(String num) {
		mdao.countUpMessage(num);
		
	}
	
}
