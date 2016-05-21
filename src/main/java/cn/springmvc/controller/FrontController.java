package cn.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.springmvc.service.WorkService;

@Controller
@RequestMapping("/")
public class FrontController {
	@Autowired
	WorkService workService;
	@RequestMapping("home")
	public String home(String tid, Model model,String id){
		model.addAttribute("id",id);
		return "home";
	}
	@RequestMapping(value = "getrecord")
	@ResponseBody
	public List<Object> getrecord(String id){
		return workService.getWorkByPro(id);		
	}
	@RequestMapping("more")
	public String more(String pro,String type,String tid, Model model){
		model.addAttribute("pro", pro);
		model.addAttribute("type", type);
		return "more";
	}
	@RequestMapping(value = "searchWork")
	@ResponseBody
	public Object  searchWork(String name,String workType,String pType,String px,String  address, int page){
		System.out.println(name+"----"+workType+"----"+pType+"-----"+px+"-----"+address+"=="+page);
		return workService.searchWork(name,workType,pType,px,address,page);
//		return null;
	}
	@RequestMapping("player")
	public String player(String id , String src,String tid, Model model){
		model.addAttribute("id",id);
		model.addAttribute("src", src);
		return "player";
	}
	@RequestMapping("language")
	public String language(String id ,String tid, Model model){
		model.addAttribute("id",id);
		return "language";
	}
	@RequestMapping("scenery")
	public String scenery(String id , String src,String tid, Model model){
		model.addAttribute("id",id);
		model.addAttribute("src", src);
		return "scenery";
	}
	@RequestMapping(value = "getAu")
	@ResponseBody
	public Object  getAu(String id){
		return workService.getAu(id);
	}
	@RequestMapping(value = "getComment")
	@ResponseBody
	public Object  getComment(String pid,String type,int page){
		return workService.getComment(pid,type,page);
	}
}
