package com.ICIA.example;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.MemberVO;
import com.example.persistence.MemberDAO;
import com.mysql.fabric.xmlrpc.base.Member;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })

public class DBTest {
	@Inject
	private MemberDAO dao;

	@Test
	public void list(){
		dao.list();
	}
    @Test
    public void insert(){
    	MemberVO vo=new MemberVO();
    	vo.setUserid("user04");
    	vo.setUserpw("pass");
    	vo.setUsername("강림");
    	dao.insert(vo);
    }
    @Test
    public void delete(){
    	dao.delete("user04");
    }
    @Test
    public void read(){
    	dao.read("user01");
    }
    @Test
    public void update(){
    	MemberVO vo=new MemberVO();
    	vo.setUserid("user01");
    	vo.setUserpw("1234");
    	vo.setUsername("강림");
    	vo.setEmail("aaa@icia.com");
    	dao.update(vo);
    }
}
