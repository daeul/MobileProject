package com.mobile.app.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobile.app.dto.member.Member;
import com.mobile.app.service.impl.MemberServiceImpl;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@RequestMapping(value = "/join.do")
	public String join() {
		return "join_form";
	}
	
	@RequestMapping(value = "/joinProc.do")
	public String joinProc(Member member) {
		
		memberService.saveMember(member);
		return "login";
	}
}
