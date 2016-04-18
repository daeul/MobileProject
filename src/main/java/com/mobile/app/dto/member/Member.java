package com.mobile.app.dto.member;

import java.io.Serializable;

public class Member implements Serializable {
	
	private int idx;
	private String m_name;
	private int m_birth;
	private String m_gender;
	private String m_id;
	private String m_pwd;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getM_birth() {
		return m_birth;
	}
	public void setM_birth(int m_birth) {
		this.m_birth = m_birth;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}

	
}
