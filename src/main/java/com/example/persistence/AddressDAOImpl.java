package com.example.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.example.domain.AddressVO;

@Repository
public class AddressDAOImpl implements AddressDAO{
    @Inject
    SqlSession session;
    private static final String namespace="addressMapper";
	@Override
	public List<AddressVO> list() {
         return session.selectList(namespace+".list");
	}
	@Override
	public void insert(AddressVO vo) {
         session.insert(namespace + ".insert", vo);
	}
	@Override
	public void delete(int id) {
		session.delete(namespace+".delete",id);
	}
	@Override
	public AddressVO read(int id) {
		return session.selectOne(namespace + ".read", id);
	}
	@Override
	public void update(AddressVO vo) {
		session.update(namespace+".update", vo);
		
	}
}
