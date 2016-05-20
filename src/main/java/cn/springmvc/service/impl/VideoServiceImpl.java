package cn.springmvc.service.impl;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springmvc.dao.VideoMapper;
import cn.springmvc.entity.Video;
import cn.springmvc.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService {
	@Autowired
	private VideoMapper videoMapper;

	@Override
	public void insertVideo(Video record) {
		// System.out.println(record.getProName() + "##" +
		// record.getUsername());
		String videoId = UUID.randomUUID().toString().replaceAll("-", "");
		record.setVideoId(videoId);
		int a = videoMapper.insert(record);
		System.out.println("插入数据：" + a);
	}

}
