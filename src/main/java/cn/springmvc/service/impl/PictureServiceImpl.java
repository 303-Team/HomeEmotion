package cn.springmvc.service.impl;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springmvc.dao.PictureMapper;
import cn.springmvc.entity.Picture;
import cn.springmvc.service.PictureService;

@Service
public class PictureServiceImpl implements PictureService {
	@Autowired
	private PictureMapper pictureMapper;

	@Override
	public void insertPicture(Picture record) {
		// TODO Auto-generated method stub
		String picId = UUID.randomUUID().toString().replaceAll("-", "");
		record.setPicId(picId);
		pictureMapper.insert(record);
	}

}
