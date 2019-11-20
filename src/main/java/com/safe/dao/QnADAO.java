package com.safe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Board;
import com.safe.vo.QnA;


@Repository("qdao")
public class QnADAO implements IQnA {
	
	@Autowired
	SqlSession session;

	@Override
	public List<QnA> selectAll() {
		return session.selectList("qna.selectAll");
	}

	@Override
	public QnA selectOne(String num) {
		session.update("qna.countUp", num);
		return session.selectOne("qna.selectOne", num);
	}

	@Override
	public void insertQ(QnA q) {
		session.insert("qna.insertq", q);
	}

	@Override
	public void insertA(QnA q) {
		session.update("qna.inserta", q);
	}

	@Override
	public void update(QnA q) {
		session.update("qna.update", q);
	}

	@Override
	public void countUp(String num) {
		session.update("qna.countUp", num);
	}

	@Override
	public void delete(String num) {
		session.delete("qna.delete", num);
	}

	@Override
	public List<QnA> findByTitle(String title) {
		return session.selectList("qna.findTitle",title);
	}

	@Override
	public List<QnA> findById(String id) {
		return session.selectList("qna.findId",id);
	}
	
	
}
