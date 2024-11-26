package com.example.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Fileorder implements Serializable {
    private static final long serialVersionUID = 1L;

    /** ID */
    private Integer id;
    private Integer fileId;
    private Integer score;
    private String orderId;
    private String time;
    private Integer userId;
    
    private String fileImg;
    private String fileName;
    private String userName;

}