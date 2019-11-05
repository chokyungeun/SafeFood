package com.safe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.service.FoodService;
import com.safe.service.MemberService;
import com.safe.vo.Food;
import com.safe.vo.Member;
import com.safe.vo.MyFood;

@Controller
public class MemberController {
	@Autowired
	MemberService mservice;
	
	@Autowired
	FoodService fservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}

	@PostMapping("/loginProcess.food")
	public String loginProcess(HttpSession session, String id, String pass) {
		if (mservice.checkMember(id, pass)) {
			session.setAttribute("id", id);
			return "redirect:/main.food";
		} else {
			session.setAttribute("msg",  "ID/PW를 확인해주세요.");
			return "redirect:/relogin.food";
		}
	}

	@GetMapping("/relogin.food")
	public String relogin(HttpSession session) {
		
		return "login";
	}
	
	@GetMapping("/login.food")
	public String login(HttpSession session) {
		if(session.getAttribute("msg")!= null) {
			session.setAttribute("msg", null);
		}
		return "login";
	}

	@GetMapping(value = "/logout.food")
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
	public String update(Member m, HttpSession session) {
		Member m2 = mservice.selectOne((String) session.getAttribute("id"));
		m.setId(m2.getId());
		m.setName(m2.getName());
		if (m.getAllergy() == null)
			m.setAllergy(m2.getAllergy());
		mservice.update(m);

		return "redirect:/main.food";
	}

	@GetMapping("/mypage.food")
	public String myPage(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<MyFood> list = mservice.AllMyfood(id);
		for(int i=0;i<list.size();i++) {
			Food f = fservice.selectOne(list.get(i).getCode());
			list.get(i).setImg(f.getImg());
			list.get(i).setName(f.getName());
			list.get(i).setAllergy(f.getAllergy());
		}
		model.addAttribute("list", list);
		return "mypage";
	}
	
	@GetMapping("/addfood.food")
	public String updateMyfood(Model model,String id, int code, int count) {
		mservice.updateMyfood(id,code,count);
		Food f = fservice.selectOne(code);
		model.addAttribute("b", f);
		return "read";
	}
	
	
	

}
