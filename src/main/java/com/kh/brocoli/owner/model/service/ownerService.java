package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;

public interface ownerService {


	int productInsert(Product p,Product_File pf,ArrayList<Product_Option> po);
}
