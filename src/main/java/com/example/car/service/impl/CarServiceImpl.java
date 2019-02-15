package com.example.car.service.impl;

import com.example.car.entity.Car;
import com.example.car.mapper.CarMapper;
import com.example.car.service.ICarService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 车辆信息 服务实现类
 * </p>
 *
 * @author liushuai10
 * @since 2019-02-15
 */
@Service
public class CarServiceImpl extends ServiceImpl<CarMapper, Car> implements ICarService {

}
