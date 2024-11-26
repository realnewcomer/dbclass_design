package com.example.mapper;

import com.example.entity.Like;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface LikeMapper {

    /**
      * 新增
    */
    int insert(Like like);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Like like);

    /**
      * 根据ID查询
    */
    Like selectById(Integer id);

    /**
      * 查询所有
    */
    List<Like> selectAll(Like like);

    @Select("select * from manager.like where user_id = #{userId} and course_id = #{courseId}")
    Like selectByUserIdAndGoodsId(@Param("userId") Integer userId, @Param("courseId") Integer courseId);
}