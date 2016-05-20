package cn.springmvc.service.impl;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springmvc.dao.AudioMapper;
import cn.springmvc.entity.Audio;
import cn.springmvc.service.AudioService;

@Service
public class AudioServiceImpl implements AudioService {
	@Autowired
	private AudioMapper audioMapper;

	@Override
	public void insertAudio(Audio record) {
		// TODO Auto-generated method stub
		String auId = UUID.randomUUID().toString().replaceAll("-", "");
		record.setAuId(auId);
		audioMapper.insert(record);
	}

}
