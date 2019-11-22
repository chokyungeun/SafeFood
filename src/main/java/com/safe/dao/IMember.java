package com.safe.dao;

import java.util.List;

import com.safe.vo.Member;
import com.safe.vo.Menu;
import com.safe.vo.MyFood;
import com.safe.vo.MyMenu;

public interface IMember {

	public boolean checkMember(String id, String pass);

	public void insert(Member m);
	
	public void update(Member b);

	public Member selectOne(String id);

	public void delete(String id);

	public List<MyFood> AllMyfood(String id);
	
	public void updateMyfood(MyFood mf);
	
	public void insertMyfood(MyFood mf);
	
	public void deleteMyfood(MyFood mf);
	
	public MyFood selectMyfood(MyFood mf);
	
	public List<Menu> AllMenu();
	
	public Menu SelectMenu(String code);
	
	public List<Menu> SearchMenu(String word);
	
	public void InsertMymenu(MyMenu mm);
	
	public void DeleteMymenu(String code);
	
}