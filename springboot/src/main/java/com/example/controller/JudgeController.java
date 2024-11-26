package com.example.controller;

import com.example.common.Result;
import com.example.entity.Judge;
import com.example.service.JudgeService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/judge")
public class JudgeController {

    @Resource
    private JudgeService judgeService;

    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody Judge judge) {
        judgeService.add(judge);
        return Result.success();
    }

    /**
     * 删除
     */
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id) {
        judgeService.deleteById(id);
        return Result.success();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        judgeService.deleteBatch(ids);
        return Result.success();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result updateById(@RequestBody Judge judge) {
        judgeService.updateById(judge);
        return Result.success();
    }

    /**
     * 根据ID查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {
        Judge judge = judgeService.selectById(id);
        return Result.success(judge);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll(Judge judge ) {
        List<Judge> list = judgeService.selectAll(judge);
        return Result.success(list);
    }



    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(Judge judge,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<Judge> page = judgeService.selectPage(judge, pageNum, pageSize);
        return Result.success(page);
    }


}