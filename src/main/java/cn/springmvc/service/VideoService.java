package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entity.Video;
import cn.springmvc.entity.VideoExample;

public interface VideoService {
	/**
	 * 上传视频
	 * 
	 * @Title: insertVideo
	 * @Description: TODO
	 * @param video
	 */
	public void insertVideo(Video record);

	/**
	 * 查询个人视频
	 * 
	 * @Title: selectByExample
	 * @Description: TODO
	 * @param example
	 * @return
	 */
	public List<Video> selectByExample(VideoExample example);

	/**
	 * 查找指定id的个人视频
	 * 
	 * @Title: selectByPrimaryKey
	 * @Description: TODO
	 * @param videoId
	 * @return
	 */
	public Video selectByPrimaryKey(String videoId);

	/**
	 * 修改个人视频信息
	 * 
	 * @Title: updateByPrimaryKey
	 * @Description: TODO
	 * @param record
	 * @return
	 */
	public int updateByPrimaryKey(Video record);

	/**
	 * 删除单个个人视频
	 * 
	 * @Title: deleteByPrimaryKey
	 * @Description: TODO
	 * @param videoId
	 * @return
	 */
	public int deleteByPrimaryKey(String videoId);
}
