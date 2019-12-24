package com.cx.truck.service;

import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.service.base.IBaseService;

import java.util.Date;
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
}
