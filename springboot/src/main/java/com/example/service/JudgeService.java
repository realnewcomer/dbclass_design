package com.example.service;

import cn.hutool.core.date.DateUtil;
import com.example.entity.Judge;
import com.example.mapper.OrdersMapper;
import com.example.mapper.JudgeMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class JudgeService {

    @Resource
    private JudgeMapper judgeMapper;

    @Resource
    private OrdersMapper ordersMapper;

    /**
     * 新增
     */
    public void add(Judge judge) {

        judgeMapper.insert(judge);
    }


    /**
     * 修改
     */
    public void updateById(Judge judge) {
        judgeMapper.updateById(judge);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        judgeMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            judgeMapper.deleteById(id);
        }
    }


    /**
     * 根据ID查询
     */
    public Judge selectById(Integer id) {
        return judgeMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<Judge> selectAll(Judge judge) {
        return judgeMapper.selectAll(judge);
    }

    /**
     * 分页查询
     */
    public PageInfo<Judge> selectPage(Judge judge, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Judge> list = judgeMapper.selectAll(judge);
        return PageInfo.of(list);
    }

}