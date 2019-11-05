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
import com.safe.service.MemberService;
import com.safe.vo.Board;
import com.safe.vo.Member;


@Controller
public class BoardController {
	@Autowired
	BoardService bservice;
	
	@Autowired
	MemberService mservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}

	@GetMapping("/boardlist.food")
	public String boardList(Model model) {
		List<Board> list = bservice.selectAll();
		model.addAttribute("list", list);
		return "list";
	}

	@GetMapping("/listread.food")
	public String searchBoard(String num, Model model) {
		Board b = bservice.selectOne(num);
		model.addAttribute("cc", b);
		return "listread";
	}

	@GetMapping("/listinsert.food")
	public String insert() {
		return "listinsert";
	}

	@PostMapping("/insertprocess.food")
	public String insertProcess(String id, String content, String title) {
		Member m = mservice.selectOne(id);
		Board b = new Board(id, null, m.getName(), null, title, content, null);
		bservice.insert(b);
		return "redirect:boardlist.food";
	}

	@GetMapping("/deletelist.food")
	public String delete(String num) {
		bservice.delete(num);
		return "redirect:boardlist.food";
	}
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
	@GetMapping("/updatelist.food")
	public String update(String num, Model model) {
		Board b = bservice.selectOne(num);
		model.addAttribute("cc", b);
		return "listupdate";
	}
	@PostMapping("/updatelist.food")
	public String updateProcess(Board b) {
		Board bb = new Board(b.getId(), b.getNum(), null, null, b.getTitle(), b.getContent(),null);
		bservice.update(bb);
		return "redirect:boardlist.food";
	}
}
