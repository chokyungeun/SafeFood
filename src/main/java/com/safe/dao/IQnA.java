package com.safe.dao;

import java.util.List;

import com.safe.vo.QnA;


public interface IQnA {
	public List<QnA> selectAll();
	public QnA selectOne(String num);
	public void insertQ(QnA q);
	public void insertA(QnA q);
	public void update(QnA q);
	public void countUp(String num);
	public void delete(String num);
	public List<QnA> findByTitle(String title);
	public List<QnA> findById(String id);
}
