package cn.springmvc.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springmvc.dao.VideoMapper;
import cn.springmvc.entity.Video;
import cn.springmvc.entity.VideoExample;
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

	@Override
	public List<Video> selectByExample(VideoExample example) {
		// TODO Auto-generated method stub
		VideoExample videoExample = new VideoExample();
		// videoExample.setLimitStart(0);
		// videoExample.setLimitEnd(10);
		return videoMapper.selectByExample(example);
	}

	@Override
	public Video selectByPrimaryKey(String videoId) {
		// TODO Auto-generated method stub
		return videoMapper.selectByPrimaryKey(videoId);
	}

	@Override
	public int updateByPrimaryKey(Video record) {
		// TODO Auto-generated method stub
		VideoExample videoExample = new VideoExample();
		// String videoId=record.getVideoId();
		// videoExample.andVideoIdLike(videoId);
		int a = videoMapper.updateByPrimaryKey(record);
		// System.out.println(a);
		return a;
	}

	@Override
	public int deleteByPrimaryKey(String videoId) {
		// TODO Auto-generated method stub
		int d = videoMapper.deleteByPrimaryKey(videoId);
		System.out.println(d);
		return d;
	}

}
