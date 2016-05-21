package cn.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.org.apache.bcel.internal.generic.GOTO;

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
		workService.plus(id,"0");
		model.addAttribute("id",id);
		model.addAttribute("src", src);
		return "player";
	}
	@RequestMapping("language")
	public String language(String id ,String tid, Model model){
		workService.plus(id,"1");
		model.addAttribute("id",id);
		return "language";
	}
	@RequestMapping("scenery")
	public String scenery(String id , String src,String tid, Model model){
		workService.plus(id,"2");
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
	@RequestMapping(value = "giveComment",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String giveComment(String pid,String type,String touser,HttpSession httpSession,String content){
		String a;
		try {
			a = httpSession.getAttribute("id").toString();
		} catch (Exception e) {
			a =  "请登录";
			return a.toString();
		}
		a = workService.giveComment(pid,type,touser,httpSession.getAttribute("id"),content).toString();
		System.out.println(a);
		return a.toString();
	}
	@RequestMapping(value = "good",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String good(String id,String type ,HttpSession httpSession){
		String a = "";
		try {
			String b = httpSession.getAttribute("id").toString();
		} catch (Exception e) {
			a =  "请登录";
			return a;
		}
		workService.good(id,type);
		System.out.println(a);
		return a;
	}
}
