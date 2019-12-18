package com.example.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.AddressVO;
import com.example.persistence.AddressDAO;

@Controller
public class AddressController {
    @Inject
    AddressDAO dao;
    
    @RequestMapping(value="/alist", method=RequestMethod.GET)
     public String list(Model model){
    	model.addAttribute("list",dao.list());
    	return "alist";
    }
    
    @RequestMapping(value="/ainsert", method=RequestMethod.GET)
    public String insert(){
   	return "ainsert";
   }
    
    @RequestMapping(value="/ainsert", method=RequestMethod.POST)
    public String insertpost(AddressVO vo){
    	System.out.println(vo.toString());
    	dao.insert(vo);
   	    return "redirect:alist";
   }
    
    @RequestMapping(value="/aread", method=RequestMethod.GET)
    public String read(int id, Model model){
    	System.out.println("id=" + id);
    	model.addAttribute("vo", dao.read(id));
   	    return "aread";
   }
    
    @RequestMapping(value="/aupdate", method=RequestMethod.POST)
    public String update(AddressVO vo){
    	System.out.println(vo.toString());
    	dao.update(vo);
   	    return "redirect:alist";
   }
    
    @RequestMapping(value="/adelete", method=RequestMethod.POST)
    public String delete(AddressVO vo){
    	dao.delete(vo.getId());
   	    return "redirect:alist";
   }
}
