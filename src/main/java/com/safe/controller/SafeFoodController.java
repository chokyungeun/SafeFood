package com.safe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.safe.algo.Algo;
import com.safe.dao.FoodDao;
import com.safe.dao.FoodDaoImpl;
import com.safe.vo.Food;


public class SafeFoodController {
	FoodDao bean;

	public SafeFoodController() {
		bean = new FoodDaoImpl();
	}

	public void main(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession(); 
		session.setAttribute("cpage", req.getRequestURI());
		List<Food> list = bean.searchAll();
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/main.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void list(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession(); // session ���
		session.setAttribute("cpage", req.getRequestURI());
		List<Food> list = bean.searchAll();
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/search.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void read(HttpServletRequest req, HttpServletResponse res) {
		int code = Integer.parseInt(req.getParameter("code"));
		bean.countUp(code);
		Food b = bean.selectOne(code);
		req.setAttribute("b", b);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/read.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
	public void search(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		session.setAttribute("cpage", req.getRequestURI());
		String word = req.getParameter("word");
		String condition = req.getParameter("condition");
		
		List<Food> list = bean.search(condition, word);;
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/search.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	public void best(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession(); // session ���
		List<Food> list = bean.searchAll();
		Algo a = new Algo();
		list = a.goodFood(list);
		
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/search.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void bad(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession(); // session ���
		List<Food> list = bean.searchAll();
		Algo a = new Algo();
		list = a.badFood(list);
		
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/search.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void chart(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession(); // session ���
		String condition = req.getParameter("condition");
		List<Food> list = bean.searchAll();
		Algo a = new Algo();
		if(condition == null ||condition.equals("popular") ) {
			list = a.chartFoods(list);
			req.setAttribute("msg", "인기순");
		}else if(condition.equals("best")) {
			list = a.goodFood(list);
			req.setAttribute("msg", "권장순");
		}else {
			list = a.badFood(list);
			req.setAttribute("msg", "비권장순");
		}
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/chart.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void random(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession(); // session ���
		List<Food> list = bean.searchAll();
		Algo a = new Algo();
		Food b = a.randomFood(list);
		req.setAttribute("b", b);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/read.jsp");
		try {
			dispatcher.forward(req, res);// jsp�� forward ��Ŵ
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
