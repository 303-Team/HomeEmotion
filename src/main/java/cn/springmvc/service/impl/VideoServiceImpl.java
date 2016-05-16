package cn.springmvc.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Service;

import com.sun.jmx.snmp.Timestamp;

import cn.springmvc.model.Video;
import cn.springmvc.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService {

	@Override
	public void insertVideo(Video video) {
		// TODO Auto-generated method stub
//		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		//Timestamp nousedate = new Timestamp(date.getTime());
//		video.setUploadTime(df.format(new Date()));
	}

}
