package com.safe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.safe.dao.IMember;
import com.safe.dao.MemberDAO;
import com.safe.service.MemberService;
import com.safe.vo.Member;

public class MemberController {
	@Autowired
	MemberService mservice;

	public MemberController() {
		bean = new MemberDAO();
	}

	public void loginProcess(HttpServletRequest req, HttpServletResponse res) {
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		try {
		HttpSession session = req.getSession();
		
		if(bean.checkMember(id,pass)) {
			session.setAttribute("id", id);
			String cpage = (String)session.getAttribute("cpage");
			res.sendRedirect(cpage);
			/*RequestDispatcher dispatcher = req.getRequestDispatcher(cpage);
			dispatcher.forward(req, res);*/
		}
		else {
			req.setAttribute("msg", "ID/PW를 입력하세요.");
			RequestDispatcher dispatcher = req.getRequestDispatcher("/view/login.jsp");
			dispatcher.forward(req, res);
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public void login(HttpServletRequest req, HttpServletResponse res) { 
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/login.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}

	public void logout(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		session.setAttribute("id", null);

		try {
			res.sendRedirect("main.food");
		} catch (IOException e) {
		e.printStackTrace();
	}
	}
	public void insertForm(HttpServletRequest req, HttpServletResponse res) {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/signup.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insert(HttpServletRequest req, HttpServletResponse res) {
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String[] allergies = req.getParameterValues("allergy");
		String allergy = "";

		for(int i=0;i<allergies.length;i++) {
			if(i==allergies.length-1)
				allergy += allergies[i];
			else
				allergy += allergies[i]+",";
		}
		
		Member m = new Member(id,pass,name, phone, allergy);
		bean.insert(m);
		
		try {
			res.sendRedirect("main.food");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	public void update(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		Member m = bean.selectOne(id);
		String pass = req.getParameter("pass");
		if(pass == "")
			pass = m.getPw();
		String name = m.getName();
		String phone = req.getParameter("phone");
		if(phone == "")
			phone = m.getPhone();
		String[] allergies = req.getParameterValues("allergy");
		String allergy = "";
		if(allergies != null) {
			for(int i=0;i<allergies.length;i++) {
				if(i==allergies.length-1)
					allergy += allergies[i];
				else
					allergy += allergies[i]+",";
			}
		}
		if(allergy == "")
			allergy = m.getAllergy();
		
		Member m2 = new Member(id,pass,name, phone, allergy);
		bean.update(m2);
		sc.main(req,res);
	}
	
	public void updateForm(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		Member m = bean.selectOne(id);
		req.setAttribute("m", m);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/memberInfo.jsp");
		try {
			dispatcher.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void delete(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		Member m = bean.selectOne(id);
		bean.delete(id);
		session.setAttribute("id", null);	
		sc.main(req,res);
	}

}
