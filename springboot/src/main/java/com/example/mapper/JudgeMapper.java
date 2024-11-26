package com.example.mapper;

import com.example.entity.Judge;

import java.util.List;

public interface JudgeMapper {

    /**
     * 新增
     */
    int insert(Judge judge);

    /**
     * 删除
     */
    int deleteById(Integer id);

    /**
     * 修改
     */
    int updateById(Judge judge);

    /**
     * 根据ID查询
     */
    Judge selectById(Integer id);

    /**
     * 查询所有
     */
    List<Judge> selectAll(Judge judge);


}