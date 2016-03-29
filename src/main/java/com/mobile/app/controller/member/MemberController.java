package com.mobile.app.controller.member;

import javax.xml.bind.Marshaller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping(value = "/checkDupId.do")
	public String checkDupId(@RequestParam String m_id) {
		String result = memberService.findId(m_id);
		
		System.out.println("****result :"+result);
		if(result != null) {
			result = "dup";
		}else {
			result = "able";
		}
		
		return result;
	}
	
	@RequestMapping(value = "/joinProc.do")
	public String joinProc(Member member) {
		
		memberService.saveMember(member);
		return "login";
	}
}
