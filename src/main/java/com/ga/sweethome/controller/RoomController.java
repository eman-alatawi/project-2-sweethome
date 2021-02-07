package com.ga.sweethome.controller;

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
import com.ga.sweethome.model.Room;


@Controller
public class RoomController {
 

	@Autowired 
	private Environment env;
	
	@Autowired
	private HouseDao housedao;
	
	@Autowired private UserController uc;
	
	@Autowired 
	HttpServletRequest request;
	
	// HTTP GET REQUEST - Room Add
	@GetMapping("/room/add")
	public ModelAndView addRoom() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("room/add");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var it = housedao.findAll();
		mv.addObject("houses", it);	
		
		
		HttpSession session = request.getSession();
		if(! uc.isUserLoggedIn()) {
			mv.setViewName("home/index");
		}else if(session.getAttribute("userRole").equals("rentee")) {
			mv.setViewName("home/index");
			return mv;
		}
		return mv;
	}
	
	@Autowired 
	private RoomDao dao;
	
	// HTTP POST REQUEST - Room Add
		@PostMapping("/room/add")
		public String addRoom(Room room) {
			dao.save(room);
			HttpSession session = request.getSession();
			session.setAttribute("successfull", " The Action Done successsfully");
			return "redirect:/room/index";
		}
		
	
		// HTTP GET REQUEST - Room Index
		@GetMapping("/room/index")
		public ModelAndView getRoom() {
			var it = dao.findAll();
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("room/index");
			mv.addObject("rooms", it);
			
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			
			return mv;
		}
		
		// HTTP GET REQUEST - Room Edit
		@GetMapping("/room/edit")
		public ModelAndView editRoom(@RequestParam int id) {
			Room room = dao.findById(id);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("room/edit");
			mv.addObject("room", room);
			
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			
			var it = housedao.findAll();

			mv.addObject("houses", it);	
			
			HttpSession session = request.getSession();
			if(! uc.isUserLoggedIn()) {
				mv.setViewName("home/index");
			}else if(session.getAttribute("userRole").equals("rentee")) {
				mv.setViewName("home/index");
				return mv;
			}

			return mv;
		}
		
		
		// HTTP GET REQUEST - Room Delete
		@GetMapping("/room/delete")
		public String deleteRoom(@RequestParam int id) {	
			HttpSession session = request.getSession();
			if(! uc.isUserLoggedIn()) {
				return "redirect:/home/index";
			}else if(session.getAttribute("userRole").equals("rentee")) {
				return "redirect:/house/index";
			}
			dao.deleteById(id);
			session.setAttribute("successfull", " Delete the Room successsfully");
			return "redirect:/room/index";
		}
		
		
	
}
