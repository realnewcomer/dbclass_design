package com.example.mapper;

import com.example.entity.Question;

import java.util.List;

public interface QuestionMapper {

    /**
     * 新增
     */
    int insert(Question question);

    /**
     * 删除
     */
    int deleteById(Integer id);

    /**
     * 修改
     */
    int updateById(Question question);

    /**
     * 根据ID查询
     */
    Question selectById(Integer id);

    /**
     * 查询所有
     */
    List<Question> selectAll(Question question);


}