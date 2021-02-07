package com.ga.sweethome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ga.sweethome.dao.UserDao;
import com.ga.sweethome.model.User;

@Controller
public class UserController {
	@Autowired
	private Environment env;

	@Autowired
	private UserDao dao;

	@Autowired // take the current request
	HttpServletRequest request;

	// To load join us
	@GetMapping("/user/joinus")
	public ModelAndView joinUs() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/joinus");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}

	// post join us form  , @RequestParam("image") MultipartFile multipartFile   throws IOException
	@PostMapping("/user/joinus")
	public ModelAndView joinUs(User user)  {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/signin");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		// Check to user is already registered
		var it = dao.findAll();
		for (User dbUser : it) {
			if (dbUser.getEmailAddress().equals(user.getEmailAddress())) {
				mv.addObject("warning", "User already exists");
				return mv;
			}
		}
		// Password Encryption
		BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		String newPassword = bCrypt.encode(user.getPassword());
		user.setPassword(newPassword);

		String conPassword = bCrypt.encode(user.getConfirmPassword());
		user.setConfirmPassword(conPassword);

//		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
//		user.setPhoto(fileName);
		user = dao.save(user);

//		String uploadDir = "user-photos/" + user.getId();
//		FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
//	        
//	     dao.save(user);

		mv.addObject("successfull", "User registered successfully");

		return mv;
	}

	// To load the sign in
	@GetMapping("/user/signin")
	public ModelAndView signIn() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/signin");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		return mv;
	}

	// To post the the signin form
	@PostMapping("/user/signin")
	public String signIn(User user) {

		BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();

		String emailAddress = user.getEmailAddress();
		String password = user.getPassword();

		User matchedUser = dao.findByEmailAddress(emailAddress);
		HttpSession session = request.getSession();
		// getting something from database 1-email match 2-password match
		if (matchedUser != null) {
			if (bCrypt.matches(password, matchedUser.getPassword())) { // take the raw password and match it with the
																		// encrypted
				// if matched set the session then redirect to the home page
				// session

				session.setAttribute("user", matchedUser);
				session.setAttribute("userEmail", matchedUser.getEmailAddress());
				session.setAttribute("userRole", matchedUser.getUserRole());

				session.setAttribute("successfull", "You are logged in successsfully");
				return "redirect:/";
			}
		}

		// if email address fails means not authenticated , redirect to the login page
		session.setAttribute("danger", "Email or password is not correct");
		return "redirect:/user/signin";
	}

	// To invalidate the current user session
	@GetMapping("user/signout")
	public String signOut() {
		HttpSession session = request.getSession();
		session.invalidate(); // distroy Usersession data /remove all the attributes
		return "redirect:/user/signin";
	}

	// To check the user is logged in or not
	public boolean isUserLoggedIn() {

		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			return false;
		} else {
			return true;
		}
	}

	// load userProfile
	@GetMapping("/user/renteeProfile")
	public ModelAndView userProfile(@RequestParam int id) {

		User rentee = dao.findById(id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/renteeProfile");
		mv.addObject("rentee", rentee);

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		if (!uc.isUserLoggedIn()) {
			mv.setViewName("home/index");
		}
		return mv;
	}

	// load ownerProfile
	@GetMapping("/user/ownerProfile")
	public ModelAndView ownerProfile(@RequestParam int id) {

		User Owneruser = dao.findById(id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/ownerProfile");
		mv.addObject("owner", Owneruser);

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()) {
			mv.setViewName("user/signin");
			session.setAttribute("info", "You should be logged in first in order to view the owner profile");
		}
		return mv;
	}

	@Autowired
	private UserController uc;

	// edit owner profile
	@GetMapping("/user/ownerProfileEdit")
	public ModelAndView editOwner(@RequestParam int id) {
		User Owneruser = dao.findById(id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/ownerProfileEdit");
		mv.addObject("owner", Owneruser);

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		if (!uc.isUserLoggedIn()) {
			mv.setViewName("home/index");
		}

		return mv;
	}

	// edit rentee profile
	@GetMapping("/user/renteeProfileEdit")
	public ModelAndView editRentee(@RequestParam int id) {
		User Renteeuser = dao.findById(id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/renteeProfileEdit");
		mv.addObject("rentee", Renteeuser);

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		if (!uc.isUserLoggedIn()) {
			mv.setViewName("home/index");
		}

		return mv;
	}

	@PostMapping("/user/ProfileEdit")
	public String editprofile(User user) {

		dao.save(user);

		HttpSession session = request.getSession();
		session.setAttribute("successfull", " Your profile updated successsfully");
		return "redirect:/house/index";
	}

	// To load change password
	@GetMapping("/user/changePassword")
	public ModelAndView changePassword(@RequestParam int id) {
		User owner = dao.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("owner", owner);
		mv.setViewName("user/changePassword");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}

	// post changePassword form
	@PostMapping("/user/changePassword")
	public ModelAndView changePassword(User user) {
//		System.out.println("change password ");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("house/index");

		System.out.println(user.getId());
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		User dbuser = dao.findById(user.getId());
		BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		String oldPass = user.getOldPass();

		if (bCrypt.matches(oldPass, dbuser.getPassword())) {
			String newPassword = bCrypt.encode(user.getPassword());
			user.setPassword(newPassword);

			dao.save(user);
			mv.addObject("successfull", "you change the password successfully");
		}

		else {
			mv.addObject("danger", "your old password doesn't match the old password in our recoreds");
		}

//		System.out.println(dbuser.getId());
//		System.out.println(user.getOldPass());
//		System.out.println(user.getPassword());

		return mv;
	}
}