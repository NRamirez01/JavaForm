package com.nathanielramirez.omikujiform.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/omikuji")
public class HomeController {
	
	@RequestMapping("")
	public String formPage() {
		return "form.jsp";
	}
	
	@RequestMapping(value="/fortuning", method=RequestMethod.POST)
	public String formProcess(HttpSession session,
		@RequestParam(value="numbers") String numbers,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="activity") String activity,
		@RequestParam(value="living") String living,
		@RequestParam(value="nice") String nice) {
	         session.setAttribute("numbers", numbers);
	         session.setAttribute("city", city);
	         session.setAttribute("person", person);
	         session.setAttribute("living", living);
	         session.setAttribute("activity", activity);
	         session.setAttribute("nice", nice);
		     return "redirect:/omikuji/show";
	}
	@RequestMapping("/show")
	public String forture(HttpSession session, Model model) {
		String numbers = (String) session.getAttribute("numbers");
		String city = (String) session.getAttribute("city");
		String person = (String) session.getAttribute("person");
		String activity = (String) session.getAttribute("activity");
		String living = (String) session.getAttribute("living");
		String nice = (String) session.getAttribute("nice");
		model.addAttribute("numbers", numbers);
		model.addAttribute("city", city);
		model.addAttribute("person", person);
		model.addAttribute("living", living);
		model.addAttribute("activity", activity);
		model.addAttribute("nice", nice);
		return "results.jsp";
	}
}
