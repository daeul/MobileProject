package com.mobile.app.controller.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.Marshaller;

import org.codehaus.jackson.map.util.JSONPObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public @ResponseBody Map checkDupId(@RequestParam String m_id) {
		Map<String,String> result = new HashMap<String, String>();
		result.put("re", memberService.findId(m_id));
		
		if(result.get("re") !=null) {
			result.put("re","dup");
		}else {
			result.put("re","able");
		}
		
		return result;
	}
	
	@RequestMapping(value = "/joinProc.do")
	public String joinProc(Member member) {
		memberService.saveMember(member);
		return "login";
	}
	
	@RequestMapping(value = "/login.do", method =  RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "/login.do", method =  RequestMethod.POST)
	public @ResponseBody String login(Member member, Model model) {
		String result;
		System.out.println("아이디"+member.getM_id());
		Member mem =  memberService.findMember(member);
		System.out.println("Member 정보 :"+mem);
		
		if(mem == null) {
//			result.addFlashAttribute("result", "failed");
//			return "redirect:login.do";
			result = "nomember";
		}else {
			result = mem.getM_id();
		}
		
//		model.addAttribute("result", result);
//		model.addAttribute("member", mem);
		return result+"";
//		return "main";
	}
}
