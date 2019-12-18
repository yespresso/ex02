package com.example.persistence;

import java.util.List;
import com.example.domain.MemberVO;

public interface MemberDAO {
      public List<MemberDAO> list();
      public void insert(MemberVO vo);
      public void delete(String userid);
      public MemberVO read(String userid);
      public void update(MemberVO vo);
}
