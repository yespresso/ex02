package com.example.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.MemberVO;
import com.example.persistence.MemberDAO;

@Controller
public class MemberController {
	@Inject
	MemberDAO dao;
	
    @RequestMapping(value="/mlist", method=RequestMethod.GET)
    public String list(Model model){
    	model.addAttribute("list",dao.list());
    	return "mlist";
    }
    
    @RequestMapping(value="/minsert", method=RequestMethod.GET)
    public String insert(){
    	return "minsert";
    }
    
    @RequestMapping(value="/minsert", method=RequestMethod.POST)
    public String insertpost(MemberVO vo){
    	System.out.println(vo.toString());
    	dao.insert(vo);
    	return "redirect:mlist";
    }
    
    @RequestMapping(value="/mread", method=RequestMethod.GET)
    public String read(String userid, Model model){
    	System.out.println("userid=" + userid);
    	model.addAttribute("vo", dao.read(userid));
    	return "mread";
    }
    
    @RequestMapping(value="/mupdate", method=RequestMethod.POST)
    public String update(MemberVO vo){
    	System.out.println(vo.toString());
    	dao.update(vo);
    	return "redirect:mlist";
    }
    
    @RequestMapping(value="/mdelete", method=RequestMethod.POST)
    public String delete(MemberVO vo){
    	dao.delete(vo.getUserid());
    	return "redirect:mlist";
    }
}
