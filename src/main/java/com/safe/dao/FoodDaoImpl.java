package com.safe.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.safe.vo.Food;

public class FoodDaoImpl implements FoodDao {

	public List<Food> searchAll() {

		SqlSession session = MyBatisUtil.getSqlSession();
		return session.selectList("Food.searchAll");
	}

	public Food selectOne(int code) {
		SqlSession session = MyBatisUtil.getSqlSession();
		return session.selectOne("Food.selectOne",code);
	}

	public ArrayList<Food> searchBest() {

		return null;
	}

	public ArrayList<Food> searchBestIndex() {

		return null;
	}

	@Override
	public List<Food> search(String condition, String word) {
		SqlSession session = MyBatisUtil.getSqlSession();
		HashMap<String, String> map = new HashMap<String, String>();
				
		map.put("key", condition);//검색조건
		map.put("word", word);//검색어	
		return session.selectList("search", map);
	}
	
	public int countUp(int code) {
		SqlSession session = MyBatisUtil.getSqlSession();
		session.commit();
		return session.update("Food.countUp",code);

	}
	

}
