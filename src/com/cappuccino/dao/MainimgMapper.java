package com.cappuccino.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Mainimg;

@Repository("MainimgMapper")
public interface MainimgMapper {
	public List<Mainimg> getMainImg();
}
