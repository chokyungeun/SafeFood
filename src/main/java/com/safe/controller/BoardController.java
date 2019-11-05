package com.safe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.service.BoardService;
import com.safe.vo.Board;


@Controller
public class BoardController {
	@Autowired
	BoardService service;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}

	@GetMapping("/boardlist.food")
	public String boardList(Model model) {
		List<Board> list = service.selectAll();
		model.addAttribute("list", list);
		return "list";
	}

	@GetMapping("/listread.food")
	public String searchBoard(String num, Model model) {
		Board b = service.selectOne(num);
		model.addAttribute("cc", b);
		return "listread";
	}

	@GetMapping("/listinsert.food")
	public String insert() {
		return "listinsert";
	}

	@PostMapping("/insertprocess.food")
	public String insertProcess(String id, String content, String title) {
//		service.insert(b);
		return "redirect:boardlist.food";
	}

//	@GetMapping("/delete.do")
//	public String delete(String num) {
//		service.delete(num);
//		return "redirect:/list.do";
//	}
//	
//	@PostMapping("/search.do")
//	public String search(String search, String searchtext, Model model) {
//		List<Board> list = null;
//		System.out.println(search);
//		System.out.println(searchtext);
//		if(search.contentEquals("name")) {
//			list = service.findByName(searchtext);
//		}else if(search.contentEquals("title")) {
//			list = service.findByTitle(searchtext);
//		}
//		model.addAttribute("list", list);
//		return "board/search";
//	}
//	
//	@GetMapping("/update.do")
//	public String update(Board c,Model model) {
//		Board b = service.selectOne(c.getNum());
//		model.addAttribute("b", c);
//		return "listupdate";
//	}
//	@PostMapping("/update.do")
//	public String updateProcess(Board b) {
//		Board pass = service.select(b.getNum());
//		if(pass.getPass().equals(b.getPass())) {
//			service.update(b);
//			return "board/updateProcess";
//		}else {
//			return "board/updateFail";
//		}
//	}
}
