package com.example.car.entity;

import com.example.test.common.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 车辆信息
 * </p>
 *
 * @author liushuai10
 * @since 2019-02-15
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
public class Car extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 车辆id
     */
    @TableId(value = "car_id", type = IdType.AUTO)
    private Integer carId;

    /**
     * 品牌
     */
    private String brand;

    /**
     * 车龄
     */
    private Integer carYear;

    /**
     * 新增时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;

    /**
     * 是否删除(0正常 1删除)
     */
    private Integer deleteFlag;


}
