package com.example.mapper;

import com.example.entity.Course;
import org.apache.ibatis.annotations.Select;

import java.io.File;
import java.util.List;
import java.util.Scanner;

public interface CourseMapper {

    /**
      * 新增
    */
    int insert(Course course);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Course course);

    /**
      * 根据ID查询
    */
    Course selectById(Integer id);

    /**
      * 查询所有
    */
    List<Course> selectAll(Course course);

    @Select("select * from manager.course where recommend = '是' and type = #{type}")
    Course getRecommend(String type);

    @Select("select * from manager.course where recommend = '否' and type = #{type} order by id desc limit 12")
    List<Course> selectTop8(String type);

    @Select("select * from manager.course where name like concat('%', #{name}, '%')")
    List<Course> selectByName(String name);
}