package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.IBoard;
import com.safe.dao.IQnA;
import com.safe.vo.Board;
import com.safe.vo.QnA;

@Service("qservice")
public class QnAServiceImpl implements QnAService {

	@Autowired
	IQnA dao;

	@Override
	public List<QnA> selectAll() {
		return dao.selectAll();
	}

	@Override
	public QnA selectOne(String num) {
		return dao.selectOne(num);
	}

	@Override
	public void insertQ(QnA q) {
		dao.insertQ(q);
	}

	@Override
	public void insertA(QnA q) {
		dao.insertA(q);
	}

	@Override
	public void update(QnA q) {
		dao.update(q);
	}

	@Override
	public void countUp(String num) {
		dao.countUp(num);
	}

	@Override
	public void delete(String num) {
		dao.delete(num);
	}

	@Override
	public List<QnA> findByTitle(String title) {
		return dao.findByTitle(title);
	}

	@Override
	public List<QnA> findById(String id) {
		return dao.findById(id);
	}

}
