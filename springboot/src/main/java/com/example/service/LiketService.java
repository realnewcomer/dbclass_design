package com.example.service;

import cn.hutool.core.util.ObjectUtil;
import com.example.common.enums.ResultCodeEnum;
import com.example.common.enums.RoleEnum;
import com.example.entity.Account;
import com.example.entity.Like;
import com.example.exception.CustomException;
import com.example.mapper.LikeMapper;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LiketService {

    @Resource
    private LikeMapper likeMapper;

    /**
     * 新增
     */
    public void add(Like like) {
        // 判断一下该用户有没有收藏过该商品，如果有，就要提示用户不能重复收藏
        Like dbLike = likeMapper.selectByUserIdAndGoodsId(like.getUserId(), like.getCourseId());
        if (ObjectUtil.isNotEmpty(dbLike)) {
            throw new CustomException(ResultCodeEnum.LIKE_ALREADY_ERROR);
        }
        likeMapper.insert(like);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        likeMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            likeMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Like like) {
        likeMapper.updateById(like);
    }

    /**
     * 根据ID查询
     */
    public Like selectById(Integer id) {
        return likeMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<Like> selectAll(Like like) {
        return likeMapper.selectAll(like);
    }

    /**
     * 分页查询
     */
    public PageInfo<Like> selectPage(Like like, Integer pageNum, Integer pageSize) {
        Account currentUser = TokenUtils.getCurrentUser();
        if (RoleEnum.USER.name().equals(currentUser.getRole())) {
            like.setUserId(currentUser.getId());
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Like> list = likeMapper.selectAll(like);
        return PageInfo.of(list);
    }
}