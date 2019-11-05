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
	
	@GetMapping("/deletemyfood.food")
	public String deletemyfood(String id, int code) {
		MyFood mf = new MyFood(id,code);
		mservice.deletelist(mf);
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
	
	@GetMapping("/updateForm.food")
	public String updateForm(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		Member m = mservice.selectOne(id);
		model.addAttribute("m", m);

		return "memberInfo";
	}

	@GetMapping("/mypage.food")
	public String myPage(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		if(id==null) {
			session.setAttribute("msg","로그인해주세요.");
			return "redirect:/remain.food";
		}
		List<MyFood> list = mservice.AllMyfood(id);
		for(int i=0;i<list.size();i++) {
			Food f = fservice.selectOne(list.get(i).getCode());
			list.get(i).setImg(f.getImg());
			list.get(i).setName(f.getName());
			list.get(i).setAllergy(f.getAllergy());
			System.out.println(f);
		}
		model.addAttribute("list", list);
		return "mypage";
	}
	
	@GetMapping("safefood/addfood.food")
	public String updateMyfood(Model model,HttpSession session,int code, int count) {
		String id= (String)session.getAttribute("id");
		System.out.println(id+" "+code+" "+count);
		mservice.updateMyfood(id,code,count);
		Food f = fservice.selectOne(code);
		model.addAttribute("b", f);
		return "read";
	}
	
	@GetMapping("/findpass.food")
	public String findpass() {
		return "findpass";
	}

	@GetMapping("/findprocess.food")
	public String findprocess(String id, String phone, HttpSession session) {
		Member m = mservice.selectOne(id);
		if(m==null) {
			session.setAttribute("msg", "해당 아이디가 존재하지 않습니다.");
		}
		else {
			session.setAttribute("msg", "비밀번호는 '" + m.getPw() + "' 입니다.");
		}
		return "redirect:/relogin.food";
	}
	

}
