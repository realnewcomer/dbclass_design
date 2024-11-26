package com.example.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Judge implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private String answer;
    private String content;
    private String name;

}