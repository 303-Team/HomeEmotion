package cn.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import cn.springmvc.entity.Video;
import cn.springmvc.model.User;
import cn.springmvc.service.UserService;
import cn.springmvc.service.VideoService;
import cn.springmvc.utils.FileUploadUtil;
import cn.springmvc.utils.ImageCut;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	private UserService userService;
	@Autowired
	private VideoService videoService;

	@RequestMapping("index")
	public String index() {
		System.out.println(111);
		return "index";
	}

	@RequestMapping("register")
	public String register() {
		return "register";
	}

	@RequestMapping("active")
	public String active() {
		return "active";
	}

	@RequestMapping("nameValidate")
	public String nameValidate(User user) {
		String username = user.getUsername();
		User user1 = userService.findUserName(username);
		if (user1 == null) {
			return "redirect:register.do";
		} else {
			return null;
		}
	}

	// @RequestMapping("nameExist")
	// public String nameExist(User user){
	// String username = user.getUsername();
	// System.out.println(username);
	// User user1=userService.findUserName(username);
	// System.out.println(user1);
	// if(user1==null){
	// return null;
	// }else{
	// return "redirect:login.do";
	// }
	// }
	@RequestMapping("codeValidate")
	public String codeValidate(User user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String code = (String) session
				.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		String newCode = user.getState();
		if (code.equals(newCode)) {
			return "redirect:register.do";
		} else {
			return "";// 请求失败
		}
	}

	@RequestMapping("registerAction")
	public String registerAction(User user, HttpServletRequest request)
			throws NoSuchAlgorithmException {
		// Boolean aBoolean="0".equals(user.getHidden());
		// System.out.println(aBoolean);
		if ("0".equals(user.getHidden())) {
			userService.insertUser(user);
			return "redirect:active.do";
		} else {
			return "redirect:register.do";
		}
	}

	@RequestMapping("login")
	public String login() {
		return "login";

	}

	@RequestMapping("loginAction")
	public String loginAction(User user, HttpSession httpSession,
			HttpServletRequest request) throws NoSuchAlgorithmException,
			ServletException, IOException {
		if ("0".equals(user.getHidden())) {
			User user2 = userService.findUser(user);
			if (user2 == null) {
				String msg = "用户名或密码错误!";
				request.setAttribute("error", msg);
				return "forward:login.do";
				// request.getRequestDispatcher("login.do").forward(request,
				// response);
			} else {
				httpSession.setAttribute("username", user2.getUsername());
				httpSession.setAttribute("id", user2.getId());
				request.setAttribute("error", "");
				return "redirect:index.do";
			}
		} else {
			return "forward:login.do";
		}
	}

	@RequestMapping("loginOut")
	public String loginOut(HttpSession httpSession) {
		httpSession.invalidate();
		return "index";

	}

	@RequestMapping("home")
	public String home() {
		return "home";
	}

	@RequestMapping("player")
	public String player() {
		return "player";
	}

	@RequestMapping("language")
	public String language() {
		return "language";
	}

	@RequestMapping("scenery")
	public String scenery() {
		return "scenery";
	}

	@RequestMapping("person")
	public String person(Model model, HttpSession httpSession) {
		String username = (String) httpSession.getAttribute("username");
		User user = userService.findUserName(username);
		model.addAttribute("User", user);
		return "person";
	}

	@RequestMapping("production")
	public String production() {
		return "production";
	}

	@RequestMapping("productionManager")
	public String productionManager() {
		return "productionManager";
	}

	@RequestMapping("manager")
	public String manager() {
		return "manager";
	}

	@RequestMapping("uploading")
	public String uploading() {
		return "fileUpload";
	}

	@RequestMapping("fileUpload")
	public String fileUpload(Video record, HttpServletRequest request,
			HttpSession httpSession) throws IllegalStateException, IOException {
		// 设置上下方文
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		System.out.println(record.getHidden());
		if ((record.getHidden()).equals("0")) {
			// 检查form是否有enctype="multipart/form-data"
			if (multipartResolver.isMultipart(request)) {
				MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;

				Iterator<String> iter = multiRequest.getFileNames();
				while (iter.hasNext()) {

					// 由CommonsMultipartFile继承而来,拥有上面的方法.
					MultipartFile file = multiRequest.getFile(iter.next());
					if (file != null) {
						String fileName = file.getOriginalFilename();
						record.setVideoName(fileName);
						String path = "E:uploadFile/" + fileName;

						File localFile = new File(path);
						file.transferTo(localFile);
					}

				}
				String videoName = record.getVideoName();
				String proName = request.getParameter("pName");
				String proType = request.getParameter("textType");
				String username = (String) httpSession.getAttribute("username");
				SimpleDateFormat df = new SimpleDateFormat(
						"yyyy-MM-dd HH:mm:ss");
				System.out.println("username：" + username + "videoName:"
						+ videoName + "proName:" + proName + "proType:"
						+ proType);
				record.setVideoName(videoName);
				record.setProName(proName);
				record.setProType(proType);
				record.setUsername(username);
				record.setUploadTime(df.format(new Date()));

				// Seesion
				System.out.println("时间:" + record.getUploadTime());
				System.out.println(record.getVideoName());
			}
			videoService.insertVideo(record);
			return "production";
		} else {
			return "fileUpload";
		}

	}

	@RequestMapping("uploadHeadImage")
	public String uploadHeadImage(User user, HttpServletRequest request,
			HttpSession httpSession, @RequestParam(value = "x") String x,
			@RequestParam(value = "y") String y,
			@RequestParam(value = "h") String h,
			@RequestParam(value = "w") String w,
			@RequestParam(value = "imgFile") MultipartFile imageFile)
			throws Exception {
		System.out.println("==========Start=============");
		String realPath = request.getSession().getServletContext()
				.getRealPath("/");
		String resourcePath = "resources/uploadImages/";
		if (imageFile != null) {
			if (FileUploadUtil.allowUpload(imageFile.getContentType())) {
				// 获取图片的文件名
				String fileName = FileUploadUtil.rename(imageFile
						.getOriginalFilename());
				// 获取图片的扩展名
				int end = fileName.lastIndexOf(".");
				String saveName = fileName.substring(0, end);
				File dir = new File(realPath + resourcePath);
				if (!dir.exists()) {
					dir.mkdirs();
				}
				File file = new File(dir, saveName + "_src.jpg");
				// 将MultipartFile转化为file类型
				imageFile.transferTo(file);
				String srcImagePath = realPath + resourcePath + saveName;
				int imageX = Integer.parseInt(x);
				int imageY = Integer.parseInt(y);
				int imageH = Integer.parseInt(h);
				int imageW = Integer.parseInt(w);
				// 这里开始截取操作
				System.out.println("==========imageCutStart=============");
				ImageCut.imgCut(srcImagePath, imageX, imageY, imageW, imageH);
				System.out.println("==========imageCutEnd=============");
			}
		}
		userService.updateUser(user);
		httpSession.invalidate();
		return "index";
	}
}
