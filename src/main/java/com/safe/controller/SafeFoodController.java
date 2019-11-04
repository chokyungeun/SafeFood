package com.safe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.algo.Algo;
import com.safe.service.FoodService;
import com.safe.vo.Food;

@Controller
public class SafeFoodController {
	@Autowired
	FoodService fservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}

	@GetMapping("/main.food")
	public String main(Model model) {
		List<Food> list = fservice.searchAll();
		model.addAttribute("list", list);
		return "main";
	}
	
	@GetMapping("/list.food")
	public String searchAll(Model model) {
		List<Food> list = fservice.searchAll();
		model.addAttribute("list", list);
		return "search";
	}

	@GetMapping("/read.food")
	public String detail(Model model, int code) {
		fservice.countUp(code);
		Food f = fservice.selectOne(code);
		model.addAttribute("b", f);

		return "read";
	}

	@PostMapping("/search.food")
	public String search(Model model, String condition, String word) {
		List<Food> list = fservice.search(condition, word);
		model.addAttribute("list", list);
		return "search";
	}
	
	@GetMapping("/chart.food")
	public String chart(Model model) {
		List<Food> list = fservice.searchAll();
		model.addAttribute("list", list);
		model.addAttribute("msg", "인기순");
		return "chart";
	}
	@PostMapping("/chart.food")
	public String chart(Model model, String condition) {
		List<Food> list = fservice.searchAll();
		Algo a = new Algo();
		System.out.println(condition);
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
		return "chart";
	}
	@GetMapping("/random.food")
	public String random(Model model) {
		List<Food> list = fservice.searchAll();
		Algo a = new Algo();
		Food b = a.randomFood(list);
		model.addAttribute("b", b);
		return "read";
		
	}
	
	
	
	/*
	
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
	
	
	
	
	
	
	
	
	
	
	*/
	

}
