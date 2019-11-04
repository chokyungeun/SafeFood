package com.safe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.IMember;
import com.safe.vo.Member;

@Service("mservice")
public class MemberServiceImpl implements MemberService{
	@Autowired
	IMember mdao;
	
	
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
}
