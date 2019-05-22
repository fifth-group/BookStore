package web.bookStore.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import web.bookStore.Iservice.IUserService;
import web.bookStore.bean.ResponseResult;
import web.bookStore.bean.User;



@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private IUserService userService;
	
	@RequestMapping("/showRegister.do")
	public String showRegister(){
		return "register";
	}
	
	@RequestMapping("/checkUsername.do")
	@ResponseBody     //不跳转到视图
	public ResponseResult<Void> checkUserByUsername(String username) {
		
		ResponseResult<Void> rr = new ResponseResult<Void>();
		boolean b = userService.checkUserByUsername(username);
		if (b) {
			rr.setState(0);
			rr.setMessage("该用户名不可以使用");
		} else {
			rr.setState(1);
			rr.setMessage("该用户名可以使用");
		}
		return rr;
	}
	
	@RequestMapping("/checkEmail.do")
	@ResponseBody     //不跳转到视图
	public ResponseResult<Void> checkUserByEmail(String email) {
		
		ResponseResult<Void> rr = new ResponseResult<Void>();
		boolean b = userService.checkUserByEmail(email);
		if (b) {
			rr.setState(0);
			rr.setMessage("该邮箱已被注册");
		} else {
			rr.setState(1);
			rr.setMessage("该邮箱可以使用");
		}
		return rr;
	}
	
	@RequestMapping("/checkPhone.do")
	@ResponseBody     //不跳转到视图
	public ResponseResult<Void> checkUserByPhone(String phone) {
		
		ResponseResult<Void> rr = new ResponseResult<Void>();
		boolean b = userService.checkUserByPhone(phone);
		if (b) {
			rr.setState(0);
			rr.setMessage("该手机号已被注册");
		} else {
			rr.setState(1);
			rr.setMessage("该手机号可以使用");
		}
		return rr;
	}
	
	@RequestMapping("/register.do")
	@ResponseBody     //不跳转到视图
	public ResponseResult<Void> register(@RequestParam("uname") String username,@RequestParam("upwd") String userpwd,String email,String phone ) {
		
		ResponseResult<Void> rr = new ResponseResult<Void>();
		User user = new User();
		user.setUsername(username);
		user.setUserpwd(userpwd);
		user.setEmail(email);
		user.setPhone(phone);
		
		
		try {
			userService.register(user);
			rr.setState(1);
			rr.setMessage("注册成功");
			
		} catch (Exception e) {
			rr.setState(0);
			rr.setMessage(e.getMessage());
			//e.printStackTrace();
		}
		
		return rr;
	}
	
	@RequestMapping("/showLogin.do")
	public String showLogin(){
		
		return "login";
	}
	
	
	@RequestMapping("/login.do")
	@ResponseBody     //不跳转到视图
	public ResponseResult<Void>  login(@RequestParam("lname") String username, @RequestParam("lwd") String password,HttpSession session){
		ResponseResult<Void> rr= new ResponseResult<Void>();
		
		try {
			User user =  userService.login( username,password);
			session.setAttribute("user", user);
			rr.setState(1);
			rr.setMessage("登录成功");
			
		} catch (Exception e) {
			rr.setState(0);
			rr.setMessage(e.getMessage());
			// TODO Auto-generated catch block
			//e.printStackTrace();	
		}
		return rr;
	}
	
	
	@RequestMapping("/exit.do")
	public String exit(HttpSession session){
		session.invalidate();
		return "redirect:../main/showIndex.do";
	}
	
	@RequestMapping("/showPersonal_password.do")
	public String showPersonal_password(){
		return "/personal_password";
	}
	
	

}



