package com.example.entity;

import lombok.Data;

import java.io.Serializable;


@Data
public class Orders implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private Integer courseId;
    private Double price;
    private String orderId;
    private String time;
    private Integer userId;

    private String courseImg;
    private String courseName;
    private String courseType;
    private String userName;

}