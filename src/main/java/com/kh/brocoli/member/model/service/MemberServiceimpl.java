package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.dao.MemberDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;


@Service("mService")
public class MemberServiceimpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = mDao.loginMember(m);
		
		return loginUser;
	}

	@Override
	public ArrayList<Auction> selectList() {
		return mDao.selectList();
	}

	
	@Override
	public ArrayList<Product> selectpList() {
		return mDao.selectpList();
	}
	
	@Override
	public ArrayList<Product> selectEList() {
		return mDao.selectEList();
	}



	@Override
	public ArrayList<Brand> selectbList() {
		return mDao.selectbList();
	}

	@Override
	public ArrayList<Brand> selectbpList(String b_Name) {
		return mDao.selectbpList(b_Name);
	}

	

	@Override
	public String mailCheck2(String email) {
		String result = mDao.mailCheck2(email);
		System.out.println("result : " + result);
		if(result != null) {
			return result;
		}else {
			return null;
		}
	}

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int mailCheck(String email) {
		// TODO Auto-generated method stub
		return 0;
	}




}
