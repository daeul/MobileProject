package com.mobile.app.service.face;

import com.mobile.app.dto.member.Member;

public interface MemberService {
	
	public void saveMember(Member member);
	
	public String findId(String m_id);
	
	public Member findMember(Member member);
}
