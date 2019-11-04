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

	@PostMapping(value = "/search.food")
	public String search(Model model, String condition, String word) {
		List<Food> list = fservice.search(condition, word);
		model.addAttribute("list", list);
		return "search";
	}

}
