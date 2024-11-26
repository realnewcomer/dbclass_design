package com.example.service;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.example.common.enums.RecommendEnum;
import com.example.common.enums.ResultCodeEnum;
import com.example.entity.Score;
import com.example.exception.CustomException;
import com.example.mapper.ScoreMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class ScoreService {

    @Resource
    private ScoreMapper scoreMapper;

    /**
     * 新增
     */
    public void add(Score score) {
        if (RecommendEnum.YES.status.equals(score.getRecommend())) {
            // 校验一下积分专区表里面有没有已经推荐过的课程
            Score dbScore = scoreMapper.selectRecommend();
            if (ObjectUtil.isNotEmpty(dbScore)) {
                throw new CustomException(ResultCodeEnum.RECOMMEND_ALREADY_ERROR);
            }
        }
        score.setTime(DateUtil.format(new Date(),"yyyy-mm-dd"));
        scoreMapper.insert(score);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        scoreMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            scoreMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Score score) {
        // 如果这个课程的推荐字段是：“是”，要去校验一下
        if (RecommendEnum.YES.status.equals(score.getRecommend())) {
            Score dbScore = scoreMapper.selectRecommend();
            if (ObjectUtil.isNotEmpty(dbScore) && !dbScore.getId().equals(score.getId())) {
                throw new CustomException(ResultCodeEnum.RECOMMEND_ALREADY_ERROR);
            }
        }
        scoreMapper.updateById(score);
    }

    /**
     * 根据ID查询
     */
    public Score selectById(Integer id) {
        return scoreMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<Score> selectAll(Score score) {
        return scoreMapper.selectAll(score);
    }

    /**
     * 分页查询
     */
    public PageInfo<Score> selectPage(Score score, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Score> list = scoreMapper.selectAll(score);
        return PageInfo.of(list);
    }

    public Score getRecommend() {
        return scoreMapper.selectRecommend();
    }

    public List<Score> getTop8() {
        return scoreMapper.getTop8();
    }
}