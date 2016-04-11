package com.mobile.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobile.app.dao.face.MemberDao;
import com.mobile.app.dto.member.Member;
import com.mobile.app.service.face.MemberService;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;

	@Override
	public void saveMember(Member member) {
		memberDao.saveMember(member);
		
	}
	
	@Override
	public String findId(String m_id) {
		return memberDao.findId(m_id);
		
	}

	public Member findMember(Member member) {
		return memberDao.findMember(member);
		
	}

	
}
