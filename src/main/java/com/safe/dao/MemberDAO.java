package com.safe.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.safe.vo.Member;

public class MemberDAO implements IMember {
	
	public boolean checkMember(String id, String pass) {
		SqlSession session = MyBatisUtil.getSqlSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);//검색조건
		map.put("pw", pass);//검색어	
		Member m = session.selectOne("checkMember", map);
		session.commit();
		if(m!=null) {
			return true;
		}
		else
			return false;
	}
	
public Member selectOne(String id) {
	SqlSession session = MyBatisUtil.getSqlSession();
	return session.selectOne("Member.selectOne",id);
	}


	
	public void insert(Member b) {
		SqlSession session = MyBatisUtil.getSqlSession();
		session.insert("Member.insert",b);
		session.commit();
	}
	public void update(Member b) {
		SqlSession session = MyBatisUtil.getSqlSession();
		session.update("Member.update",b);
		session.commit();
		}
	
	public void delete(String id) {
		SqlSession session = MyBatisUtil.getSqlSession();
		session.delete("Member.delete", id);
		session.commit();
		}
	
}
