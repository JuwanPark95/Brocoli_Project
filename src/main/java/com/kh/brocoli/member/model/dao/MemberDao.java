package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QnAComment;


@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Auction> selectList() {
		return (ArrayList)sqlSession.selectList("mainMapper.auctionlist");
	}
	
	public ArrayList<Product> selectpList() {
		return (ArrayList)sqlSession.selectList("mainMapper.ranklist");
	}
	
	public ArrayList<Product> selectEList() {
		return (ArrayList)sqlSession.selectList("mainMapper.eventlist");
	}


	public ArrayList<Brand> selectbList() {
		return (ArrayList)sqlSession.selectList("mainMapper.brandlist");
	}

	public ArrayList<Brand> selectbpList(String b_Name) {
		return (ArrayList)sqlSession.selectList("mainMapper.bproductlist",b_Name);
	}

	public ArrayList<Product> selectapList() {
		return (ArrayList)sqlSession.selectList("mainMapper.aproductlist");
	}

	public ArrayList<ProductDetail> selectpDetail(String p_NO) {
		return (ArrayList)sqlSession.selectList("mainMapper.pDetail",p_NO);
	}

	public ArrayList<Product> selectdayList() {
		return (ArrayList)sqlSession.selectList("mainMapper.daylist");
	}

	public ArrayList<Product> selectmonthList() {
		return (ArrayList)sqlSession.selectList("mainMapper.monthlist");
	}

	public ArrayList<Product> selectyearList() {
		return (ArrayList)sqlSession.selectList("mainMapper.yearlist");
	}

	public ArrayList<ProductDetail> selectOption(HashMap<String,String> hmap) {
		return (ArrayList)sqlSession.selectList("mainMapper.optionlist",hmap);
	}

	public int insertQnaCommant(QNAProduct pq) {
		return sqlSession.insert("mainMapper.qnacommant",pq);
	}

	public ArrayList<QnAComment> selectQnaCommant(String pq_P_No) {
		/*
		 * ArrayList<QnAComment> qList =
		 * (ArrayList)sqlSession.selectList("mainMapper.selectQnaCommant",pq_P_No);
		 * if(qList.equals(null)) { return
		 * (ArrayList)sqlSession.selectList("mainMapper.selectQnaCommant2",pq_P_No);
		 * }else{ return qList; }
		 */
		return (ArrayList)sqlSession.selectList("mainMapper.selectQnaCommant",pq_P_No);
	}

	public ArrayList<QnAComment> selectQnaRecommant() {
		return (ArrayList)sqlSession.selectList("mainMapper.selectQnaReCommant");
	}

	public int deleteqna(String pq_No) {
		return sqlSession.update("mainMapper.deleteqna",pq_No);
	}


}

