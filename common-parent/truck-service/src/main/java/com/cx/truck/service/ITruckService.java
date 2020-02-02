package com.cx.truck.service;

import com.cx.truck.model.Truck;
import com.cx.truck.service.base.IBaseService;

public interface ITruckService extends IBaseService<Truck> {
    /**
     * 根据车牌号查询车辆
     * @param plateNumber
     * @return
     */
    Truck findByPlateNumber(String plateNumber);

    /**
     * 根据客户id统计车辆数
     * @param CustomerId
     * @return
     */
    Integer countByCustomer(Integer CustomerId);
}
