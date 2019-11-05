package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.IBoard;
import com.safe.vo.Board;

@Service("bservice")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	IBoard dao;
	
	@Override
	public List<Board> selectAll() {
		return dao.selectAll();
	}

	@Override
	public Board selectOne(String num) {
		return dao.selectOne(num);
	}

	@Override
	public void insert(Board b) {
		dao.insert(b);
	}

	@Override
	public void update(Board b) {
		dao.update(b);
	}

	@Override
	public void countUp(String num) {
		dao.countUp(num);
	}

	@Override
	public void delete(String num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Board> findByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
