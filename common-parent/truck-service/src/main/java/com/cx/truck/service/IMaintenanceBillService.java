package com.cx.truck.service;

import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.service.base.IBaseService;

public interface IMaintenanceBillService extends IBaseService<MaintenanceBill> {

    /**
     * 选择性添加并返回id
     * @param maintenanceBill
     * @return
     */
    public Integer insertSelective(MaintenanceBill maintenanceBill);
}
