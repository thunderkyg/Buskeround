package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value="/Artist")
@Controller
public class ArtistController {
	
	//아티스트 종합랭킹
	@RequestMapping(value = "/ArtistRenk", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistrenk() {
		
		System.out.println("[CompanyController.ArtistRenk()]");
		
		return"/Artist/ArtistRenk";
	}
	
	
	
	//아티스트 팬 많은 순
	@RequestMapping(value = "/ArtistFan", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistfan() {
		
		System.out.println("[CompanyController.ArtistFan()]");
		
		return"/Artist/ArtistFan";
	}
	
	
	
	//아티스트 팬 추가목록(user)
	@RequestMapping(value = "/ArtistFanList", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistfanlist() {
		
		System.out.println("[CompanyController.ArtistFanList()]");
		
		return"/Artist/ArtistFanList";
	}
	
	
	
	
	//아티스트 뉴아티스트 목록
	@RequestMapping(value = "/ArtistNew", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistnew() {
		
		System.out.println("[CompanyController.ArtistNew()]");
		
		return"/Artist/ArtistNew";
	}
	
	
	
	//아티스트 장르 목록
	@RequestMapping(value = "/ArtistGenre", method= {RequestMethod.GET, RequestMethod.POST })
	public String artistgenre() {
		
		System.out.println("[CompanyController.ArtistGenre()]");
		
		return"/Artist/ArtistGenre";
	}
	


	
}
