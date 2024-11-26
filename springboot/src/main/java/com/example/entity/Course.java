package com.example.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Course implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private String img;
    private String name;
    private String content;
    private String type;
    private Double price;
    private String video;
    private String file;
    private Integer typeId;
    private Double discount;
    private String recommend;
    private String time;

}