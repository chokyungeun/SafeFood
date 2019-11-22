package com.safe.service;

import java.util.ArrayList;
import java.util.List;

import com.safe.vo.Food;

public interface FoodService {
	
	public List<Food> searchAll();
	
	
	public Food selectOne(int code);
	
	
	public ArrayList<Food> searchBest();
	
	public ArrayList<Food> searchBestIndex();
	public List<Food> search(String condition, String word);

	public int countUp(int code);
}
