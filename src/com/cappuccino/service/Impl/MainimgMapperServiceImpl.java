package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.MainimgMapper;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.service.MainimgMapperService;

@Service
public class MainimgMapperServiceImpl implements MainimgMapperService{

	@Autowired
	private MainimgMapper mim;

	@Override
	public List<Mainimg> getMainImg() {
		// TODO Auto-generated method stub
		return mim.getMainImg();
	}
}
