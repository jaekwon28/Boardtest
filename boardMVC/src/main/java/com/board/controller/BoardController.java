package com.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.BoardVO;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// 게시글 전체 조회
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void getList(Model model) throws Exception {
		
		List<BoardVO> list = null;
		list = service.list();
		
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/writer", method=RequestMethod.GET)
	public void getWirte() throws Exception {
		
	}
	// 게시글 작성
	@RequestMapping(value="/writer", method=RequestMethod.POST)
	public String posttWriter(BoardVO vo) throws Exception {
		service.writer(vo);
		
		return "redirect:/board/list";
	}
	// 게시글 디테일 조회
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
		
		BoardVO vo = service.view(bno);
		model.addAttribute("view", vo);
	}
	// 게시물 수정
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, Model model) throws Exception {
		
		BoardVO vo = service.view(bno);
		model.addAttribute("view", vo);
		log.info("넘버", vo);
	}

	//게시물 수정
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String postModify(BoardVO vo) throws Exception {
		
		service.modify(vo);
		
		return "redirect:/board/view?bno=" + vo.getBno();
		
	}
	
	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("bno") int bno) throws Exception {
	  
	 service.delete(bno);  

	 return "redirect:/board/list";
	}
	
	

	
	
}
