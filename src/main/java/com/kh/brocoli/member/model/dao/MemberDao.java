package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Product;


@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member loginMember(Member m) {
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public ArrayList<Auction> selectList() {
		return (ArrayList)sqlSession.selectList("mainMapper.auctionlist");
	}
	
	public ArrayList<Product> selectpList() {
		return (ArrayList)sqlSession.selectList("mainMapper.ranklist");
	}

	public int deleteMember(String mId) {
		return sqlSession.delete("memberMapper.deleteMember",mId);
	}

<<<<<<< HEAD


=======
>>>>>>> branch 'master' of https://github.com/JuwanPark95/Brocoli_Project.git
}


