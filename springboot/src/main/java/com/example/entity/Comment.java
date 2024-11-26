package com.example.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * 评论信息表
*/

@Data
public class Comment implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private Integer userId;
    private Integer courseId;

    private String courseName;
    private String userAvatar;
    private String userName;

    private String time;
    private String content;

}