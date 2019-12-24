package com.cx.truck.service;

import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.service.base.IBaseService;

import java.util.List;

public interface IMaintenanceItemService extends IBaseService<MaintenanceItem> {
    /**
     * 根据维修单id查询维修项目
     * @param billId
     * @return
     */
    List<MaintenanceItem> findByBillId(Integer billId);

    /**
     * 根据维修单id批量删除
     * @param billIds
     */
    void deleteBatchByBillId(List<Integer> billIds);
}
