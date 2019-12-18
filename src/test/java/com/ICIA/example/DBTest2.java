package com.ICIA.example;

import javax.inject.Inject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.AddressVO;
import com.example.domain.MemberVO;
import com.example.persistence.AddressDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })

public class DBTest2 {
	@Inject
	private AddressDAO dao;

	@Test
	public void list() {
		dao.list();
	}
	@Test
	public void insert(){
		AddressVO vo=new AddressVO();
		vo.setId(4);
		vo.setName("ƒ·¡„");
		vo.setTel("010-0301-0703");
		vo.setAddress("¿Œ√µ ø¡∑√µø");
		dao.insert(vo);
	}
	@Test
	public void delete(){
		dao.delete(4);
	}
	@Test
	public void read(){
		dao.read(4);
	}
	@Test
	public void update(){
		AddressVO vo=new AddressVO();
		vo.setId(5);
		vo.setName("∞≠∏≤");
		vo.setTel("010-0040-0040");
		vo.setAddress("¿Œ√µ ≥Ì«ˆµø");
	    dao.update(vo);
	}
}
