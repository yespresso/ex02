package com.example.persistence;

import java.util.List;

import com.example.domain.AddressVO;

public interface AddressDAO {
         public List<AddressVO> list();
         public void insert(AddressVO vo);
         public void delete(int id);
         public AddressVO read(int id);
         public void update(AddressVO vo);
         
}
