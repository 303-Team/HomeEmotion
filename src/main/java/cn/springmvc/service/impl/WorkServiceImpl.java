package cn.springmvc.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
//import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.springmvc.dao.AudioMapper;
import cn.springmvc.dao.CommentMapper;
import cn.springmvc.dao.PictureMapper;
import cn.springmvc.dao.UserMapper;
import cn.springmvc.dao.VideoMapper;
import cn.springmvc.entity.Audio;
import cn.springmvc.entity.AudioExample;
import cn.springmvc.entity.Comment;
import cn.springmvc.entity.CommentExample;
import cn.springmvc.entity.Picture;
import cn.springmvc.entity.PictureExample;
import cn.springmvc.entity.User;
import cn.springmvc.entity.UserExample;
import cn.springmvc.entity.Video;
import cn.springmvc.entity.VideoExample;
import cn.springmvc.service.WorkService;


@Service("WorkService")
public class WorkServiceImpl implements WorkService{

	@Autowired
	UserMapper userMapper;
	@Autowired
	VideoMapper videoMapper;
	@Autowired
	AudioMapper audioMapper;
	@Autowired
	PictureMapper pictureMapper;
	@Autowired
	CommentMapper commentMapper;
	
	@Override
	public List<Object> getWorkByPro(String id) {
//		Map<String, Object> result = new HashMap<String, Object>();
		List<Object> result = new ArrayList<Object>();// 
		Map<String, String> name = new HashMap<String, String>();
		UserExample userExample = new UserExample();
		userExample.or().andAddressEqualTo(id).andDeleteFlagEqualTo("0");
		List<User> users = userMapper.selectByExample(userExample);
		List<String> userId = new ArrayList<String>();
		for (User user : users) {
			userId.add(user.getId());
			name.put(user.getId(), user.getUsername());
//			System.out.println(user.getUsername());
		}
		List<Map<String, Object>> hotVideo = new ArrayList<Map<String, Object>>();
		VideoExample videoExample = new VideoExample();
		videoExample.or().andDeleteFlagEqualTo("0").andUsernameIn(userId);
		videoExample.setOrderByClause("hot desc");
		videoExample.setLimitStart(0);
		videoExample.setLimitEnd(8);
		List<Video> v = videoMapper.selectByExample(videoExample);
		for (Video video : v) {
			Map<String, Object> vMap = new HashMap<>();
			vMap.put("name", name.get(video.getUsername()));
			vMap.put("data", video);
			hotVideo.add(vMap);
		}
		
		List<Map<String, Object>> lastVideo = new ArrayList<Map<String, Object>>();
		VideoExample videoExample2 = new VideoExample();
		videoExample2.or().andDeleteFlagEqualTo("0").andUsernameIn(userId);
		videoExample2.setOrderByClause("upload_time desc");
		videoExample2.setLimitStart(0);
		videoExample2.setLimitEnd(10);
		List<Video> v2 = videoMapper.selectByExample(videoExample2);
		for (Video video : v2) {
			Map<String, Object> vMap = new HashMap<>();
			vMap.put("name", name.get(video.getUsername()));
			vMap.put("data", video);
			lastVideo.add(vMap);
		}
		
		List<Map<String, Object>> hotAudio = new ArrayList<Map<String, Object>>();
		AudioExample audioExample = new AudioExample();
		audioExample.or().andDeleteFlagEqualTo("0").andUsernameIn(userId);
		audioExample.setOrderByClause("hot desc");
		audioExample.setLimitStart(0);
		audioExample.setLimitEnd(9);
		List<Audio> a = audioMapper.selectByExample(audioExample);
		for (Audio audio : a) {
			Map<String, Object> aMap = new HashMap<>();
			aMap.put("name", name.get(audio.getUsername()));
			aMap.put("data", audio);
			hotAudio.add(aMap);
		}
		
		List<Map<String, Object>> lastAudio = new ArrayList<Map<String, Object>>();
		AudioExample audioExample2 = new AudioExample();
		audioExample2.or().andDeleteFlagEqualTo("0").andUsernameIn(userId);
		audioExample2.setOrderByClause("upload_time desc");
		audioExample2.setLimitStart(0);
		audioExample2.setLimitEnd(10);
		List<Audio> a2 = audioMapper.selectByExample(audioExample2);
		for (Audio audio : a2) {
			Map<String, Object> aMap = new HashMap<>();
			aMap.put("name", name.get(audio.getUsername()));
			aMap.put("data", audio);
			lastAudio.add(aMap);
		}
		
		List<Map<String, Object>> hotPic = new ArrayList<Map<String, Object>>();
		PictureExample pictureExample = new PictureExample();
		pictureExample.or().andDeleteFlagEqualTo("0").andUsernameIn(userId);
		pictureExample.setOrderByClause("hot desc");
		pictureExample.setLimitStart(0);
		pictureExample.setLimitEnd(8);
		List<Picture> p = pictureMapper.selectByExample(pictureExample);
		for (Picture picture : p) {
			Map<String, Object> pMap = new HashMap<>();
			pMap.put("name", name.get(picture.getUsername()));
			pMap.put("data", picture);
			hotPic.add(pMap);
		}
		
		List<Map<String, Object>> lastPic = new ArrayList<Map<String, Object>>();
		PictureExample pictureExample2 = new PictureExample();
		pictureExample2.or().andDeleteFlagEqualTo("0").andUsernameIn(userId);
		pictureExample2.setOrderByClause("upload_time desc");
		pictureExample2.setLimitStart(0);
		pictureExample2.setLimitEnd(10);
		List<Picture> p2 = pictureMapper.selectByExample(pictureExample2);
		for (Picture picture : p2) {
			Map<String, Object> pMap = new HashMap<>();
			pMap.put("name", name.get(picture.getUsername()));
			pMap.put("data", picture);
			lastPic.add(pMap);
		}
		
		
		result.add(hotVideo);
		result.add(lastVideo);
		result.add(hotAudio);
		result.add(lastAudio);
		result.add(hotPic);
		result.add(lastPic);
		
		return result;
	}

	@Override
	public Object searchWork(String name,String workType,String pType,String px,String  address, int page) {
//		VideoExample videoExample = new VideoExample();
//		VideoExample.Criteria criteria = videoExample.createCriteria(); 
////		criteria.andVideoIdEqualTo("b9e9b58a874we73ed2w2");
//		criteria.andVideoNameEqualTo("我在湖南");
//		
//		return videoMapper.selectByExample(videoExample);
		Map<String, Object> result = new HashMap<String, Object>();
		UserExample userExample = new UserExample();
		if (address != null && !address.isEmpty()) {
			userExample.or().andDeleteFlagEqualTo("0").andAddressEqualTo(address);
		}
		List<User> users = userMapper.selectByExample(userExample);
		List<String > ids =new ArrayList<String>();
		Map<String,String> nameMap = new HashMap<String,String>();
		for (User user : users) {
			ids.add(user.getId());
			nameMap.put(user.getId(), user.getUsername());
		}
		if (workType.equals("0")) {
			VideoExample videoExample = new VideoExample();
			VideoExample.Criteria criteria = videoExample.createCriteria(); 
			if (name != null && !name.isEmpty()) {
				criteria.andVideoNameEqualTo(name.trim());
			}
			if (pType != null && !pType.isEmpty()) {
				criteria.andProTypeEqualTo(pType);
			}
			if (address != null && !address.isEmpty()) {
				criteria.andUsernameIn(ids);
			}
			criteria.andDeleteFlagEqualTo("0");
			if (px.equals("1")) {
				videoExample.setOrderByClause("upload_time desc");
			}
			videoExample.setLimitStart((page-1)*12);
			videoExample.setLimitEnd(12);
			List<Video> a = videoMapper.selectByExample(videoExample);
			List<String> b = new ArrayList<String>();
			for (Video video : a) {
				b.add(nameMap.get(video.getUsername()));
			}
			result.put("name", b);
			result.put("data", a);
			result.put("total", videoMapper.countByExample(videoExample));
		}
		if (workType.equals("1")) {
			AudioExample audioExample = new AudioExample();
			AudioExample.Criteria criteria = audioExample.createCriteria();
			if (name != null && !name.isEmpty()) {
				criteria.andAuNameLike("%"+name+"%");
			}
			if (pType != null && !pType.isEmpty()) {
				criteria.andAuTypeEqualTo(pType);
			}
			if (address != null && !address.isEmpty()) {
				criteria.andUsernameIn(ids);
			}
			criteria.andDeleteFlagEqualTo("0");
			if (px.equals("1")) {
				audioExample.setOrderByClause("upload_time desc");
			}
			audioExample.setLimitStart((page-1)*12);
			audioExample.setLimitEnd(12);
			List<Audio> a = audioMapper.selectByExample(audioExample);
			List<String> b = new ArrayList<String>();
			for (Audio audio : a) {
				b.add(nameMap.get(audio.getUsername()));
			}
			result.put("name", b);
			result.put("data", a);
			result.put("total", audioMapper.countByExample(audioExample));
		}
		if (workType.equals("2")) {
			PictureExample pictureExample = new PictureExample();
			PictureExample.Criteria criteria = pictureExample.createCriteria();
			if (name != null && !name.isEmpty()) {
				criteria.andPicNameLike("%"+name+"%");
			}
			if (pType != null && !pType.isEmpty()) {
				criteria.andPicTypeEqualTo(pType);
			}
			if (address != null && !address.isEmpty()) {
				criteria.andUsernameIn(ids);
			}
			criteria.andDeleteFlagEqualTo("0");
			if (px.equals("1")) {
				pictureExample.setOrderByClause("upload_time desc");
			}
			pictureExample.setLimitStart((page-1)*12);
			pictureExample.setLimitEnd(12);
			List<Picture> a = pictureMapper.selectByExample(pictureExample);
			List<String> b = new ArrayList<String>();
			for (Picture picture : a) {
				b.add(nameMap.get(picture.getUsername()));
			}
			result.put("name", b);
			result.put("data", a);
			result.put("total", pictureMapper.countByExample(pictureExample));
		}
		return result;
	}

	@Override
	public Object getAu(String id) {
		AudioExample audioExample = new AudioExample();
		audioExample.or().andAuIdEqualTo(id).andDeleteFlagEqualTo("0");
		
		return audioMapper.selectByExample(audioExample);
	}

	@Override
	public Object getComment(String pid, String type, int page) {
		Map<String, Object> mr = new HashMap<String, Object>();
		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
		CommentExample commentExample = new CommentExample();
		commentExample.or().andPidEqualTo(pid).andTypeEqualTo(type).andDeleteFlagEqualTo("0").andTouserEqualTo("");
		commentExample.setLimitStart((page-1)*5);
		commentExample.setLimitEnd(5);
		commentExample.setOrderByClause("date desc");
		int total = commentMapper.countByExample(commentExample);
		List<Comment> parent = commentMapper.selectByExample(commentExample);
		for (Comment comment : parent) {
			result.add(commentList(comment));
		}
		mr.put("dataList", result);
		mr.put("total", total);
		return mr;
	}
	private Map<String, Object> commentList(Comment comment) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", comment);
		map.put("user", userMapper.selectByPrimaryKey(comment.getUserid()));
		CommentExample commentExample = new CommentExample();
		commentExample.or().andTouserEqualTo(comment.getId()).andDeleteFlagEqualTo("0");
		commentExample.setOrderByClause("date desc");
		List<Comment> coms = commentMapper.selectByExample(commentExample);
		map.put("length", coms.size());
		List<Map<String, Object>> child = new ArrayList<Map<String, Object>>();
		for (Comment com : coms) {
			child.add(commentList(com));
		}
		map.put("child", child);
		return map;
	}
}
