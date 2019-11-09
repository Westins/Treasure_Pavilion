package com.cappuccino.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.UserInfoMapperService;

@Controller("UserInfoController")
@RequestMapping("UserInfo")
public class UserInfoController {

	@Autowired
	private UserInfoMapperService uims;

	// ---------------------- 欧武淼 Go -------------------
		@RequestMapping("Login")
		public boolean Login(HttpServletRequest request, String userAccount, String userPwd) {
			System.out.println("进入登录后台....");
			System.out.println("userAccount=" + userAccount);
			System.out.println("userPwd=" + userPwd);
			HttpSession session = request.getSession(true);
			if (userAccount != null && !"".equals(userAccount)) {
				String login = uims.Judge(userAccount, userPwd);
				if (!"".equals(login) && login != null) {
					if (login == "true" || "true".equals(login)) {
						System.out.println("1111");
						UserInfo getuser = uims.getAllUser(userAccount);
						session.setAttribute("userinfo", getuser);
					} else {
						request.setAttribute("login", login);
						return false;
					}
				} else {
					return false;
				}
			} else {
				return false;
			}
			return true;
		}

		@RequestMapping("Source")
		public boolean Source(HttpServletRequest request, String username, String userAccount, String password,
				String phone, String validCode, String email) {
			HttpSession session = request.getSession();
			System.out.println("进入注册后台....");
			System.out.println("userAccount=" + username);
			System.out.println("userAccount=" + userAccount);
			System.out.println("userAccount=" + phone);
			System.out.println("userPwd=" + password);
			System.out.println("yzm=" + validCode);
			UserInfo user = new UserInfo();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
			String Mydate = df.format(new Date());
			System.out.println(Mydate);
			try {
				Date utilDate = df.parse(Mydate);
				System.out.println(utilDate);
				Date date = new java.sql.Date(utilDate.getTime());
				System.out.println(date);
				user.setUserRegisterTime(date);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			user.setUserName(username);
			user.setUserAccount(userAccount);
			user.setUserPwd(password);
			user.setUserPhone(phone);
			user.setUserEmail(email);
			String trueyzm = (String) session.getAttribute("code");
			List<UserInfo> ulist = uims.getUser(userAccount);
			if (ulist.size() > 0) {
				request.setAttribute("source", "ophfalse");
				return false;
			} else {
				if (user != null) {
					if (validCode == trueyzm || validCode.equals(trueyzm)) {
						session.removeAttribute("code");
						if (uims.AddUsers(user) > 0) {
							request.setAttribute("source", "true");
							return true;
						}
					} else {
						request.setAttribute("source", "yzm");
						return false;
					}
				}
			}
			return true;
		}

		@RequestMapping("YZM")
		public void YZM(HttpServletResponse response, HttpServletRequest request, PrintWriter pw) {
			System.out.println("进入验证码验证");
			String phone = request.getParameter("phone");
			System.out.println(phone);
			PhoneCode pho = new PhoneCode();
			String result = pho.getPhonemsg(phone);
			HttpSession session = request.getSession();
			// 设置session
			session.setAttribute("code", result);
			// 将短信验证码放到session中保存
			session.setMaxInactiveInterval(60 * 3);
			// pw.write(result);
			pw.print(true);
			pw.flush();
			pw.close();
		}
		
		 // ------------- 用户信息修改 ----------- 
		// 修改信息== 欧武淼
		@RequestMapping("UpdateUserInfoByUserId")
		public void UpdateUserInfoByUserId(Model model,@RequestParam(value = "userImg", required = false) MultipartFile file) {
			
			String name = file.getOriginalFilename();
			// 要上传到的位置+文件名
			String path = "D:/Java/Treasure_Pavilion/WebContent/login/image/shop/" + name;
			File dest = new File(path);
			try {
				file.transferTo(dest);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			// 拼接你要存到数据库的路径名+文件名
			String shopsLogo = "login/image/shop/" + name;		
			UserInfo user1 = new UserInfo();
			user1.setUserAccount("");
			user1.setUserAge("");
			user1.setUserName("");
			user1.setUserImg("");
			user1.setUserEmail("");
			user1.setUserPwd("");
			user1.setUserSex(1);
			user1.setUserPayTreasureWallet(0.0);
			user1.setUserId(1);
			
			uims.UpdateUserInfoByUserId(user1);
		}
		
		// ---------------------- 欧武淼 END -------------------

	// ---------------------- 单威 Go -------------------
	@RequestMapping("LoginYz")
	public void LoginYz(PrintWriter out, HttpSession session) {
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		if (user == null) {
			out.print(0);
			out.flush();
			out.close();
		} else {
			out.print(1);
			out.flush();
			out.close();
		}
	}

	// ---------------------- 单威 END -------------------

}
