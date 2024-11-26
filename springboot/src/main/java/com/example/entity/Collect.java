package com.example.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Collect implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private Integer userId;
    private Integer courseId;

    private String courseName;
    private String courseImg;
}