package cn.springmvc.dao;

import cn.springmvc.entity.Audio;
import cn.springmvc.entity.AudioExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AudioMapper {
    int countByExample(AudioExample example);

    int deleteByExample(AudioExample example);

    int deleteByPrimaryKey(String auId);

    int insert(Audio record);

    int insertSelective(Audio record);

    List<Audio> selectByExample(AudioExample example);

    Audio selectByPrimaryKey(String auId);

    int updateByExampleSelective(@Param("record") Audio record, @Param("example") AudioExample example);

    int updateByExample(@Param("record") Audio record, @Param("example") AudioExample example);

    int updateByPrimaryKeySelective(Audio record);

    int updateByPrimaryKey(Audio record);
}