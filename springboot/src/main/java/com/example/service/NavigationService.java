package com.example.service;

import cn.hutool.core.util.ObjectUtil;
import com.example.entity.Navigation;
import com.example.mapper.NavigationMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * 导航栏业务处理
 **/
@Service
public class NavigationService {

    @Resource
    private NavigationMapper navigationMapper;

    /**
     * 新增
     */
    public void add(Navigation navigation) {
        Navigation dbNavigation = navigationMapper.selectByUserId(navigation.getUserId());
        if(ObjectUtil.isNotEmpty(dbNavigation)){
            if(ObjectUtil.isNotEmpty(navigation.getFlag1()))
            {
                dbNavigation.setFlag1("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getFlag2()))
            {
                dbNavigation.setFlag2("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getFlag3()))
            {
                dbNavigation.setFlag3("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getFlag4()))
            {
                dbNavigation.setFlag4("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getFlag5()))
            {
                dbNavigation.setFlag5("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getFlag6()))
            {
                dbNavigation.setFlag6("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getExamFlag1()))
            {
                dbNavigation.setExamFlag1("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getExamFlag2()))
            {
                dbNavigation.setExamFlag2("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getDemoFlag1()))
            {
                dbNavigation.setDemoFlag1("true");
            }
            if(ObjectUtil.isNotEmpty(navigation.getDemoFlag2()))
            {
                dbNavigation.setDemoFlag2("true");
            }
            navigationMapper.updateById(dbNavigation);
        }
        else {
            navigationMapper.insert(navigation);
        }
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        navigationMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            navigationMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Navigation navigation) {
        navigationMapper.updateById(navigation);
    }

    /**
     * 根据ID查询
     */
    public Navigation selectById(Integer id) {
        return navigationMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<Navigation> selectAll(Navigation navigation) {
        return navigationMapper.selectAll(navigation);
    }

    /**
     * 分页查询
     */
    public PageInfo<Navigation> selectPage(Navigation navigation, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Navigation> list = navigationMapper.selectAll(navigation);
        return PageInfo.of(list);
    }

    public Navigation selectByUserId(Integer id) {
        return navigationMapper.selectByUserId(id);
    }

    public void isCreate(Navigation navigation) {
        Navigation dbNavigation = navigationMapper.selectByUserId(navigation.getUserId());
        if(ObjectUtil.isEmpty(dbNavigation)){
            navigationMapper.insert(navigation);
        }
    }
}