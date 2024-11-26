package com.example.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Score implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private String img;
    private String name;
    private String content;
    private String type;
    private Integer price;
    private String video;
    private String file;
    private String recommend;
    private String time;

}