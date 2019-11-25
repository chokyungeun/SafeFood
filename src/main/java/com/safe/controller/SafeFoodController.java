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

import com.safe.algo.Algo;
import com.safe.service.FoodService;
import com.safe.service.MemberService;
import com.safe.vo.Food;
import com.safe.vo.Message;

@Controller
public class SafeFoodController {
	@Autowired
	FoodService fservice;
	@Autowired
	MemberService mservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}
	@GetMapping("map.food")
	public String map(Model model2, HttpSession session) {
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "map";
	}
	@GetMapping("/main.food")
	public String main(Model model, Model model2, HttpSession session) {
		if(session.getAttribute("msg")!=null)
			session.setAttribute("msg", null);
		List<Food> list = fservice.searchAll();
		model.addAttribute("list", list);
		
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		
		return "main";
	}
	@GetMapping("/remain.food")
	public String remain(Model model, Model model2, HttpSession session) {
		List<Food> list = fservice.searchAll();
		model.addAttribute("list", list);
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "main";
	}
	@GetMapping("/qna.food")
	public String qna(HttpSession session, Model model2) {
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "qna";
	}

	
	@GetMapping("/list.food")
	public String searchAll(Model model,Model model2, HttpSession session) {
		List<Food> list = fservice.searchAll();
		model.addAttribute("list", list);
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "search";
	}

	@GetMapping("/read.food")
	public String detail(Model model, int code, HttpSession session,Model model2) {
		if(session.getAttribute("id")==null) {
			session.setAttribute("msg", "로그인해주세요.");
			return "redirect:remain.food";
		}
		fservice.countUp(code);
		Food f = fservice.selectOne(code);
		model.addAttribute("b", f);
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "read";
	}

	@PostMapping("/search.food")
	public String search(Model model, String condition, String word,Model model2, HttpSession session) {
		List<Food> list = fservice.search(condition, word);
		model.addAttribute("list", list);
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "search";
	}
	
	@GetMapping("/chart.food")
	public String chart(Model model, Model model2, HttpSession session) {
		List<Food> list = fservice.searchAll();
		model.addAttribute("list", list);
		model.addAttribute("msg", "인기순");
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "chart";
	}
	@PostMapping("/chart.food")
	public String chart(Model model, String condition,Model model2, HttpSession session) {
		List<Food> list = fservice.searchAll();
		Algo a = new Algo();
		if(condition.equals("popular") ) {
			list = a.chartFoods(list);
			model.addAttribute("msg", "인기순");
		}else if(condition.equals("best")) {
			list = a.goodFood(list);
			model.addAttribute("msg", "권장순");
		}else {
			list = a.badFood(list);
			model.addAttribute("msg", "비권장순");
		}
		model.addAttribute("list", list);
		model.addAttribute("condition", list);

String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "chart";
	}
	@GetMapping("/random.food")
	public String random(Model model,Model model2, HttpSession session) {
		List<Food> list = fservice.searchAll();
		Algo a = new Algo();
		Food b = a.randomFood(list);
		model.addAttribute("b", b);
		String receiveid = (String) session.getAttribute("id");
		List<Message> mlist = mservice.AllReceivemessage(receiveid);
		model2.addAttribute("mlist", mlist);
		return "read";
		
	}
	

}
