package com.safe.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.safe.service.MemberService;
import com.safe.service.QnAService;
import com.safe.vo.QnA;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
public class QnAController {
	@Autowired
	QnAService qservice;

	@Autowired
	MemberService mservice;

	@GetMapping("/qna/all")
	public List<QnA> qnaList() {
		return qservice.selectAll();
	}

	@GetMapping("/qna/read/{num}")
	public QnA qnasearch(@PathVariable String num) {
		return qservice.selectOne(num);
	}

	@PostMapping("/qna/insert")
	public void qnainsert(@RequestBody QnA q) {
		qservice.insertQ(q);
	}

	@DeleteMapping("/qna/delete/{num}")
	public void qnadelete(@PathVariable String num, HttpSession session, HttpServletResponse response) throws Exception{
		String id = (String) session.getAttribute("id");
		if(id.equals("admin")) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("삭제되었습니다.");
			out.flush();
			qservice.delete(num);
		}else {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("권한이 없습니다.");
			out.flush();
		}
	}

	@PutMapping("/qna/insertcomment")
	public void insertcomment(@RequestBody QnA q, HttpSession session, HttpServletResponse response) throws Exception {
		String id = (String) session.getAttribute("id");
		if(id==null || !id.equals("admin")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("권한이 없습니다.");
			out.flush();
		}
		else {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("댓글이 입력되었습니다.");
			out.flush();
			qservice.insertA(q);
		}
	}

	@PutMapping("/qna/update")
	public void updateProcess(@RequestBody QnA q, HttpSession session, HttpServletResponse response) throws Exception {
		QnA qq = new QnA(q.getId(), q.getNum(), null, null, q.getTitle(), q.getContent(), null, q.getComment());
		String id = (String) session.getAttribute("id");
		if(id==q.getId()) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("수정되었습니다.");
			out.flush();
			qservice.update(qq);
		}else {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("권한이 없습니다.");
			out.flush();
		}
	}

	@RequestMapping(value="/qna/getid", method=RequestMethod.GET)
	public String getid(HttpSession session) {
		String id = (String) session.getAttribute("id");
		return id;
	}

}
