package com.mobile.app.dao.face;

import com.mobile.app.dto.member.Member;

public interface MemberDao {

	void saveMember(Member member);

	String findId(String m_id);

	Member findMember(Member member);

}
