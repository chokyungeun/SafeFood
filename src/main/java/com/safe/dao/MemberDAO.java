package com.safe.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Member;
import com.safe.vo.Menu;
import com.safe.vo.Menu2;
import com.safe.vo.Message;
import com.safe.vo.MyFood;
import com.safe.vo.MyMenu;

@Repository("mdao")
public class MemberDAO implements IMember {
	@Autowired
	SqlSession session;

	public boolean checkMember(String id, String pass) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);// 검색조건
		map.put("pw", pass);// 검색어
		Member m = session.selectOne("checkMember", map);
		// session.commit();
		if (m != null) {
			return true;
		} else
			return false;
	}

	public Member selectOne(String id) {
		return session.selectOne("member.selectOne", id);
	}

	public void insert(Member b) {
		session.insert("member.insert", b);
	}

	public void update(Member b) {
		session.update("member.update", b);
	}

	public void delete(String id) {
		session.delete("member.delete", id);
	}

	@Override
	public List<MyFood> AllMyfood(String id) {
		return session.selectList("member.AllMyfood",id);
	}

	@Override
	public void insertMyfood(MyFood mf) {
		session.insert("member.insertMyfood", mf);
	}
	public void updateMyfood(MyFood mf) {
		session.update("member.updateMyfood", mf);
	}

	@Override
	public MyFood selectMyfood(MyFood mf) {
		return session.selectOne("member.selectMyfood", mf);
	}

	@Override
	public void deleteMyfood(MyFood mf) {
		session.update("member.deleteMyfood", mf);
		
	}

	@Override
	public List<Menu> AllMenu() {
		return session.selectList("member.allMenu");
	}

	@Override
	public Menu SelectMenu(String code) {
		return session.selectOne("member.selectMenu", code);
	}

	@Override
	public List<Menu> SearchMenu(String word) {
		return session.selectList("member.searchMenu", word);
	}

	@Override
	public void InsertMymenu(MyMenu mm) {
		session.insert("member.insertMymenu", mm);
	}

	@Override
	public void DeleteMymenu(String num) {
		session.update("member.deleteMymenu", num);
	}

	@Override
	public List<Menu2> SelectMymenu(String id) {
		return session.selectList("member.selectMymenu", id);
	}

	@Override
	public List<Message> AllReceivemessage(String receiveid) {
		return session.selectList("member.AllReceivemessage", receiveid);
	}

	@Override
	public List<Message> AllSendmessage(String sendid) {
		return session.selectList("member.AllSendmessage", sendid);
	}

	@Override
	public Message SelectMessage(String num) {
		return session.selectOne("member.SelectMessage", num);
	}

	@Override
	public void SendMessage(Message m) {
		session.insert("member.SendMessage", m);
	}

	@Override
	public void DeleteMessage(String num) {
		session.delete("member.DeleteMessage", num);
	}
}
