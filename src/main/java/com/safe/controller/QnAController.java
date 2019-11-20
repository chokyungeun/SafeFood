package com.safe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.safe.service.QnAService;
import com.safe.vo.QnA;

@CrossOrigin("*")
@RestController
public class QnAController {
	@Autowired
	QnAService qservice;
	

	@GetMapping("/qna/all")
	public List<QnA> qnaList() {
		return qservice.selectAll();
	}

	@GetMapping("/qna/read")
	public QnA qnasearch(String num) {
		return qservice.selectOne(num);
	}

	@PostMapping("/qna/insert")
	public void qnainsert(QnA q) {
		System.out.println(q);
		qservice.insertQ(q);
	}

	@GetMapping("/qna/delete")
	public void qnadelete(@RequestBody String num) {
		qservice.delete(num);
	}
	
	@GetMapping("/qna/insertcomment")
	public void insertcomment(String num, String comment) {
		QnA q = qservice.selectOne(num);
		q.setComment(comment);
		qservice.insertA(q);
	}
	
	@PostMapping("/qna/update")
	public void updateProcess(QnA q) {
		QnA qq = new QnA(q.getId(), q.getNum(), null, null, q.getTitle(), q.getContent(),null, q.getComment());
		qservice.update(qq);
	}
}
