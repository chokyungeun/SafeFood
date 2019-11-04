package com.safe.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Food;

@Repository("fdao")
public class FoodDaoImpl implements FoodDao {
	@Autowired
	SqlSession session;

	public List<Food> searchAll() {
		return session.selectList("Food.searchAll");
	}

	public Food selectOne(int code) {
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
		HashMap<String, String> map = new HashMap<String, String>();
				
		map.put("key", condition);//검색조건
		map.put("word", word);//검색어	
		return session.selectList("search", map);
	}
	
	public int countUp(int code) {
		session.commit();
		return session.update("Food.countUp",code);

	}
	

}
