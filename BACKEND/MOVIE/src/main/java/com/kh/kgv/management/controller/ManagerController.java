package com.kh.kgv.management.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.kgv.customer.model.vo.User;
import com.kh.kgv.items.model.vo.Movie;
import com.kh.kgv.management.model.service.ManagerService;
import com.kh.kgv.management.model.vo.Event;

@Controller
@RequestMapping("/manager")
@SessionAttributes({"loginUser"})
public class ManagerController {
	
	@Autowired
	private ManagerService service;

	// 관리자_메인페이지 이동
	@GetMapping("/main")
	public String moveMain() {
		System.out.println("관리자_메인페이지 이동");
		return "manager/managerPage";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_회원 리스트 이동
	@GetMapping("/member")
	public String moveMember(
			Model model
			, @RequestParam(value = "cp", required = false, defaultValue="1" ) int cp
			) {
		Map<String, Object>getUserList = null;
		
		// 회원 리스트 얻어오기
		getUserList = service.selectAll(cp);
		 
		model.addAttribute("getUserList", getUserList);
	
		System.out.println("관리자_회원 리스트 이동");
		return "manager/manager_member_list";
	}
	
	// ===================================================
	// ===================================================
	
	// 회원 관리자 상태 업데이트
	@ResponseBody
	@PostMapping("/Manager_ST")
		public int  changeMgSt(
			@RequestParam("MST") String mst
			, @RequestParam("userId") String userId
			, User user
				) {
		System.out.println("AJAX로 가지고 온 ST의 값은 : " + mst);
		System.out.println("AJAX로 가지고 온 userId의 값은 : " + userId);
		
		user.setUserManagerSt(mst);
		user.setUserEmail(userId);
		
		int result = service.updateST(user);
		
		if(result > 0) {
			System.out.println("관리자 상태 변경 완료");
			 result = 1;
			
		} else {
			System.out.println("관리자 상태 변경 실패");
			result = 0;
		}
		return result;
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_영화 등록 
	@ResponseBody
	@PostMapping("/movie_add")
	public int MovieAdd(Movie inputMovie
//							, RedirectAttributes ra 
							) {
		System.out.println("영화 등록 기능 수행");
			
		System.out.println("inputMovie: " + inputMovie);
			
		int result = service.MovieAdd(inputMovie);
			
		System.out.println("controller result:" + result);
		
	
		System.out.println("등록 ㄱㄱ");	
//		if(result > 0) {
//			message = "영화 등록 성공";
//			path = "/manager/movie_add";
//		} else {
//			message = "영화 등록 실패";
//			path = "/manager/movie_add";
//		}
			
//		ra.addFlashAttribute("message", message);
//		return "redirect:" + path;
		return result;
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_1:1 문의 목록 이동
	@GetMapping("/ask_list")
	public String moveAskList() {
		System.out.println("관리자_1:1 문의 목록 이동");
		return "manager/manager_ask_list";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_영화 목록 이동
	@GetMapping("/movie_list")
	public String moveMovieList(Model model) {
		
		// movielist 값 얻어오기
		Movie movie = new Movie();
		List<Movie> movielist = service.movieList(movie);
		System.out.println("movielist 값 :::::" + movielist);
				
		model.addAttribute("movielist", movielist);
		
		
		
		System.out.println("관리자_영화 목록 이동");
		return "manager/manager_movie_list";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_영화 등록 이동
	@GetMapping("/movie_add")
	public String moveMovieAdd(Model model) {

		// movie grade 값 얻어오기
		List<String> mgradelist = service.mgradeList();
		System.out.println("mgradelist 값 :::::" + mgradelist);
		
		model.addAttribute("mgradelist", mgradelist);
		
		// movie genre 값 얻어오기
		List<String> mgenrelist = service.mgenreList();
		System.out.println("mgenrelist 값 :::::" + mgenrelist);
		
		model.addAttribute("mgenrelist", mgenrelist);
		
		System.out.println("관리자_영화 등록 이동");
		return "manager/manager_movie_add";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_극장 등록 이동
	@GetMapping("/manager_cinema_add")
	public String moveCinemaAdd() {
		System.out.println("관리자_극장 등록 이동");
		return "manager/manager_cinema_add";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_상영시간 목록 이동
	@GetMapping("/play_list")
	public String movePlayList() {
		System.out.println("관리자_상영시간 목록 이동");
		return "manager/manager_movie_play_list";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_상영시간 등록 이동
	@GetMapping("/play_add")
	public String movePlayAdd() {
		System.out.println("관리자_상영시간 등록 이동");
		return "manager/manager_movie_play_add";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_이벤트 목록 이동
	@GetMapping("/event_list")
	public String moveEventList(
			Model model
			, @RequestParam(value = "cp", required = false, defaultValue="1" ) int cp
			) {
		
	Map<String, Object>getEventList = null;
	
	// 이벤트 리스트 얻어오기
	getEventList = service.eventList(cp);
	 
	model.addAttribute("getEventList", getEventList);

		System.out.println("관리자_이벤트 목록 이동");
		return "manager/manager_event_list";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_이벤트 등록 이동
	@GetMapping("/event_add")
	public String moveEventAdd() {
		System.out.println("관리자_이벤트 등록 이동");
		return "manager/manager_event_add";
	}
	
	// ===================================================
	// ===================================================
	
		// 이벤트 수정
	@GetMapping("/event_list/edit/{eventNo}")
	public String editEvent(
	        Model model,
	        Event event,
	        @PathVariable("eventNo") int eventNo
			) {
		
		Map<String, Object>editEvent = null;
		
		event.setEventNo(eventNo);
		
		editEvent = service.getEditEventList(event);
		System.out.println("DAO에서 가지고 온 editEvent : " + editEvent);
		model.addAttribute("editEvent", editEvent);
		
		return "manager/manager_event_edit";
		
	}
	
	
	// ===================================================
	// ===================================================
	
	// 관리자_공지사항 목록 이동
	@GetMapping("/notice_list")
	public String moveNoticeList() {
		System.out.println("관리자_공지사항 목록 이동");
		return "manager/manager_notice_list";
	}
	
	// ===================================================
	// ===================================================
	
	// 관리자_공지사항 등록 이동
	@GetMapping("/notice_add")
	public String moveNoticeAdd() {
		System.out.println("관리자_공지사항 등록 이동");
		return "manager/manager_notice_add";
	}
	
}
