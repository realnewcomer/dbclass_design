package com.example.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Allquestion implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer id;
    /** 题型 */
    private Integer type;
    /** 试题内容 */
    private String content;
    /** a */
    private String A;
    /** b */
    private String B;
    /** c */
    private String C;
    /** d */
    private String D;
    /** 解析 */
    private String detail;
    /** 答案 */
    private String answer;
    private Integer paper;


}