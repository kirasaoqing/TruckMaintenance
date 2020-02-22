package com.cx.truck.service;

import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.service.base.IBaseService;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

public interface IMaintenanceBillService extends IBaseService<MaintenanceBill> {

    /**
     * 根据复杂条件查询
     * @param beginDate
     * @param endDate
     * @param truckId
     * @return
     */
    List<MaintenanceBill> findByCondition(String beginDate, String endDate, Integer truckId);

    /**
     * 根据车辆id统计维修单数量
     * @param truckId
     * @return
     */
    Integer countByTruck(Integer truckId);

    /**
     * 统计车辆信息
     * @param date
     * @return
     */
    HashMap<String,Integer> getTruckCounts(String date);
}
