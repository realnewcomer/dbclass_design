package com.example.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Question implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private String img;
    private String name;
    private String content;
    private String time;

}