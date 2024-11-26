package com.example.entity;


import lombok.Data;

@Data
public class RelateDTO {
    /** 用户id */
    private Integer useId;
    /** 商品id */
    private Integer courseId;
    /** 指数 */
    private Integer index;

    public RelateDTO(Integer useId, Integer courseId, Integer index) {
        this.useId = useId;
        this.courseId = courseId;
        this.index = index;
    }

}