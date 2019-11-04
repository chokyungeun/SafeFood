package com.safe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.service.MemberService;
import com.safe.vo.Member;

@Controller
public class MemberController {
	@Autowired
	MemberService mservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}
	
	@PostMapping("/loginProcess.food")
	public String loginProcess(HttpSession session,String id, String pass) {
		if(mservice.checkMember(id,pass)) {
			session.setAttribute("id", id);
			return "redirect:/main.food";
		}
		else {
			return "redirect:/login.food";
		}
	}
	
	@GetMapping("/login.food")
	public String login(String id, String pass) {
		return "login";
	}
	
	@GetMapping(value="/logout.food")
	public String logout(HttpSession session) {
		session.setAttribute("id", null);
		return "redirect:/main.food";
	}
	
	@GetMapping("/insertForm.food")
	public String insertForm() {
		return "signup";
	}
	
	@GetMapping("/signup.food")
	public String signup(Member m) {
		mservice.insert(m);
		return "redirect:/main.food";
	}
	
	@GetMapping("/delete.food")
	public String delete(HttpSession session) {
		String id = (String) session.getAttribute("id");
		session.setAttribute("id", null);
		mservice.delete(id);
		return "redirect:/main.food";
	}
	
	@PostMapping("/update.food")
	public String update(Member m,HttpSession session) {
		Member m2 = mservice.selectOne((String)session.getAttribute("id"));
		m.setId(m2.getId());
		m.setName(m2.getName());
		if(m.getAllergy() == null)
			m.setAllergy(m2.getAllergy());
		System.out.println(m);
		mservice.update(m);
		
		return "redirect:/main.food";
	}
	
	@GetMapping("/updateProcess.food")
	public String updateProcess(Model model, HttpSession session) {
		Member m = mservice.selectOne((String)session.getAttribute("id"));
		model.addAttribute("m", m);
		return "memberInfo";
	}

	
}
