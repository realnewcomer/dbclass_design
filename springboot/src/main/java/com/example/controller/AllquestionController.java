package com.example.controller;

import com.example.common.Result;
import com.example.entity.Allquestion;
import com.example.service.AllquestionService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;

/**
 * null前端操作接口
 **/
@RestController
@RequestMapping("/allquestion")
public class AllquestionController {

    @Resource
    private AllquestionService allquestionService;

    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody Allquestion allquestion) {
        allquestionService.add(allquestion);
        return Result.success();
    }

    /**
     * 删除
     */
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id) {
        allquestionService.deleteById(id);
        return Result.success();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        allquestionService.deleteBatch(ids);
        return Result.success();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result updateById(@RequestBody Allquestion allquestion) {
        allquestionService.updateById(allquestion);
        return Result.success();
    }

    /**
     * 根据ID查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {
        Allquestion allquestion = allquestionService.selectById(id);
        return Result.success(allquestion);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll(Allquestion allquestion) {
        List<Allquestion> list = allquestionService.selectAll(allquestion);
        return Result.success(list);
    }

    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(Allquestion allquestion,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<Allquestion> page = allquestionService.selectPage(allquestion, pageNum, pageSize);
        return Result.success(page);
    }


    @GetMapping("/randomJudge")
    public Result randomJudge(){
        List<Allquestion>allquestionList = allquestionService.randomJudge();
        return Result.success(allquestionList);
    }


    @GetMapping("/randomQuestion")
    public  Result randomQuestion(){
        List<Allquestion> allquestionList = allquestionService.randomQuestion();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper1")
    public Result paper1(){
        List<Allquestion>allquestionList = allquestionService.paper1();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper2")
    public Result paper2(){
        List<Allquestion>allquestionList = allquestionService.paper2();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper3")
    public Result paper3(){
        List<Allquestion>allquestionList = allquestionService.paper3();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper4")
    public Result paper4(){
        List<Allquestion>allquestionList = allquestionService.paper4();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper5")
    public Result paper5(){
        List<Allquestion>allquestionList = allquestionService.paper5();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper6")
    public Result paper6(){
        List<Allquestion>allquestionList = allquestionService.paper6();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper7")
    public Result paper7(){
        List<Allquestion>allquestionList = allquestionService.paper7();
        return Result.success(allquestionList);
    }

    @GetMapping("/paper8")
    public Result paper8(){
        List<Allquestion>allquestionList = allquestionService.paper8();
        return Result.success(allquestionList);
    }


}