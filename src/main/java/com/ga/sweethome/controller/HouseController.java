package com.ga.sweethome.controller;
//
//import java.time.LocalDateTime;
//import java.time.format.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ga.sweethome.dao.HouseDao;
import com.ga.sweethome.dao.RoomDao;
import com.ga.sweethome.dao.UserDao;
import com.ga.sweethome.model.House;
import com.ga.sweethome.model.User;

@Controller
public class HouseController {

	@Autowired
	private UserController uc;

	@Autowired
	private Environment env;
	@Autowired
	private RoomDao roomDao;
	@Autowired
	HttpServletRequest request;

	/// ADD HOUSE
	@GetMapping("/house/add")
	public ModelAndView addHouse() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("house/add");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		HttpSession session = request.getSession();

		if (!uc.isUserLoggedIn()) {
			mv.setViewName("home/index");
		} else if (session.getAttribute("userRole").equals("rentee")) {
			mv.setViewName("home/index");
			return mv;
		}
		return mv;
	}

	@Autowired
	private HouseDao dao;

	@PostMapping("/house/add")
	public String addHouse(House house) {
		HttpSession session = request.getSession();

		dao.save(house);
		session.setAttribute("successfull", " The Action Done successsfully");
		return "redirect:/house/index";

	}

	/// HOUSE INDEX PAGE
	@GetMapping("/house/index")
	public ModelAndView getHouse() {
		var it = dao.findAll();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("house/index");
		mv.addObject("houses", it);
//		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm");
//		mv.addObject("localDateTimeFormat",dtf );

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		return mv;
	}
	
	
	// HOUSE DETAIL PAGE
	@GetMapping("/house/detail")
	public ModelAndView houseDetails(@RequestParam int id) {
//		System.out.println(id);
		
		var rooms = roomDao.findAll();
		
		House house = dao.findById(id);
    
		ModelAndView mv = new ModelAndView();
		mv.setViewName("house/detail");
		mv.addObject("house", house);
		mv.addObject("rooms", rooms);

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
    
		return mv;
	}
	// RENT

	// load HOUSE EDIT
	@GetMapping("/house/edit")
	public ModelAndView editHouse(@RequestParam int id) {
		House house = dao.findById(id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("house/edit");
		mv.addObject("house", house);

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()) {
			mv.setViewName("home/index");
		} else if (session.getAttribute("userRole").equals("rentee")) {
			mv.setViewName("home/index");
			return mv;
		}
		return mv;
	}

	// HOUSE Delete
	@GetMapping("/house/delete")
	public String deleteHouse(@RequestParam int id) {
		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()) {
			return "redirect:/home/index";
		} else if (session.getAttribute("userRole").equals("rentee")) {
			return "redirect:/house/index";
		}
		dao.deleteById(id);
		session.setAttribute("successfull", " Delete the House successsfully");
		return "redirect:/house/index";
	}
		
		@Autowired private UserDao userDao;
		
		//Post mapping rent
		@GetMapping("/house/rent")
		public String rentHouse( @RequestParam int id,@RequestParam int renteeId) {
			
			HttpSession session = request.getSession();
			House house = dao.findById(id);
//			System.out.println(house);
			
			if(house.getRentee() == null) {
				User renteeUser = userDao.findById(renteeId);
				house.setRentee(renteeUser);
				dao.save(house);
				session.setAttribute("successfull", "You rent the house successsfully");
				return "redirect:/user/renteeProfile?id="+renteeId;
			}
			
			
			session.setAttribute("warning", "The House Is not avilable for Rent now ");
			return "redirect:/house/detail?id="+id;
			
		}
		//Post mapping rent
		@GetMapping("/house/leave")
		public String leaveHouse( @RequestParam int id,@RequestParam int renteeId) {
			
			HttpSession session = request.getSession();
			House house = dao.findById(id);
//			System.out.println(house);
			User renteeUser = userDao.findById(renteeId);
			
			if(house.getRentee() == null || house.getRentee().getId() != renteeUser.getId()) {
				session.setAttribute("warning", "You are not allowed to leave the house because you're not the current rentee ");
				return "redirect:/house/index";
				
			}
			house.setRentee(null);
			dao.save(house);
			session.setAttribute("successfull", "You leave the house successsfully");
			return "redirect:/house/index";
			
			
			
			
		}
}
