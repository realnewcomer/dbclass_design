package com.example.service;

import com.example.entity.Allquestion;
import com.example.mapper.AllquestionMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * null业务处理
 **/
@Service
public class AllquestionService {

    @Resource
    private AllquestionMapper allquestionMapper;

    /**
     * 新增
     */
    public void add(Allquestion allquestion) {
        allquestionMapper.insert(allquestion);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        allquestionMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            allquestionMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Allquestion allquestion) {
        allquestionMapper.updateById(allquestion);
    }

    /**
     * 根据ID查询
     */
    public Allquestion selectById(Integer id) {
        return allquestionMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<Allquestion> selectAll(Allquestion allquestion) {
        return allquestionMapper.selectAll(allquestion);
    }

    /**
     * 分页查询
     */
    public PageInfo<Allquestion> selectPage(Allquestion allquestion, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Allquestion> list = allquestionMapper.selectAll(allquestion);
        return PageInfo.of(list);
    }

    public List<Allquestion> randomJudge() {
        return allquestionMapper.randomJudge();
    }

    public List<Allquestion> paper1() {
        return allquestionMapper.paper1();
    }

    public List<Allquestion> paper2() {
        return allquestionMapper.paper2();
    }

    public List<Allquestion> paper3() {
        return allquestionMapper.paper3();
    }

    public List<Allquestion> paper4() {
        return allquestionMapper.paper4();
    }

    public List<Allquestion> paper5() {
        return allquestionMapper.paper5();
    }

    public List<Allquestion> paper6() {
        return allquestionMapper.paper6();
    }

    public List<Allquestion> paper7() {
        return allquestionMapper.paper7();
    }

    public List<Allquestion> paper8() {
        return allquestionMapper.paper8();
    }

    public List<Allquestion> randomQuestion() {
        return allquestionMapper.randomQuestion();
    }
}