package com.safe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.safe.service.QnAService;
import com.safe.vo.QnA;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
public class QnAController {
	@Autowired
	QnAService qservice;
	

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
	public void qnadelete(@PathVariable String num) {
		qservice.delete(num);
	}
	
	@PutMapping("/qna/insertcomment")
	public String insertcomment(@RequestBody QnA q, HttpSession session) {
		
		q.setComment(q.getComment());
		qservice.insertA(q);
		return "qna";
	}
	
	@PutMapping("/qna/update")
	public void updateProcess(@RequestBody QnA q) {
		QnA qq = new QnA(q.getId(), q.getNum(), null, null, q.getTitle(), q.getContent(),null, q.getComment());
		qservice.update(qq);
	}
}
