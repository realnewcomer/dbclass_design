package com.example.controller;

import com.example.common.Result;
import com.example.entity.Comment;
import com.example.entity.Navigation;
import com.example.service.NavigationService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;

/**
 * 导航栏前端操作接口
 **/
@RestController
@RequestMapping("/navigation")
public class NavigationController {

    @Resource
    private NavigationService navigationService;

    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody Navigation navigation) {
        navigationService.add(navigation);
        return Result.success();
    }

    /**
     * 删除
     */
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id) {
        navigationService.deleteById(id);
        return Result.success();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        navigationService.deleteBatch(ids);
        return Result.success();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result updateById(@RequestBody Navigation navigation) {
        navigationService.updateById(navigation);
        return Result.success();
    }

    /**
     * 根据ID查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {
        Navigation navigation = navigationService.selectById(id);
        return Result.success(navigation);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll(Navigation navigation) {
        List<Navigation> list = navigationService.selectAll(navigation);
        return Result.success(list);
    }

    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(Navigation navigation,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<Navigation> page = navigationService.selectPage(navigation, pageNum, pageSize);
        return Result.success(page);
    }

    @GetMapping("/selectByUserId/{id}")
    public Result selectByUserId(@PathVariable Integer id) {
        Navigation navigation = navigationService.selectByUserId(id);
        return Result.success(navigation);
    }

    @PostMapping("/isCreate")
    public Result isCreate(@RequestBody Navigation navigation){
        navigationService.isCreate(navigation);
        return Result.success();
    }

}