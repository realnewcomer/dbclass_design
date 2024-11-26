package com.example.mapper;

import com.example.entity.Navigation;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 操作navigation相关数据接口
*/
public interface NavigationMapper {

    /**
      * 新增
    */
    int   insert(Navigation navigation);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Navigation navigation);

    /**
      * 根据ID查询
    */
    Navigation selectById(Integer id);

    /**
      * 查询所有
    */
    List<Navigation> selectAll(Navigation navigation);

    @Select("select * from manager.navigation where user_id = #{userId}")
    Navigation selectByUserId(Integer userId);
}