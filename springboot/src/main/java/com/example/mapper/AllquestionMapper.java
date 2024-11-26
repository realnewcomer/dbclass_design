package com.example.mapper;

import com.example.entity.Allquestion;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 操作allquestion相关数据接口
*/
public interface AllquestionMapper {

    /**
      * 新增
    */
    int insert(Allquestion allquestion);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Allquestion allquestion);

    /**
      * 根据ID查询
    */
    Allquestion selectById(Integer id);

    /**
      * 查询所有
    */
    List<Allquestion> selectAll(Allquestion allquestion);


    @Select("SELECT * FROM manager.allquestion WHERE type=1 ORDER BY RAND() LIMIT 15")
    List<Allquestion> randomJudge();

    @Select("select * from manager.allquestion where paper=1")
    List<Allquestion> paper1();

    @Select("select * from manager.allquestion where paper=2")
    List<Allquestion> paper2();

    @Select("select * from manager.allquestion where paper=3")
    List<Allquestion> paper3();

    @Select("select * from manager.allquestion where paper=4")
    List<Allquestion> paper4();

    @Select("select * from manager.allquestion where paper=5")
    List<Allquestion> paper5();

    @Select("select * from manager.allquestion where paper=6")
    List<Allquestion> paper6();

    @Select("select * from manager.allquestion where paper=7")
    List<Allquestion> paper7();

    @Select("select * from manager.allquestion where paper=8")
    List<Allquestion> paper8();

    @Select("SELECT * FROM manager.allquestion WHERE type=2 ORDER BY RAND() LIMIT 15")
    List<Allquestion> randomQuestion();
}