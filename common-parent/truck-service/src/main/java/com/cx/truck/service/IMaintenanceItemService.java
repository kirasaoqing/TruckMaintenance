package com.cx.truck.service;

import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.service.base.IBaseService;

import java.util.List;

public interface IMaintenanceItemService extends IBaseService<MaintenanceItem> {
    List<MaintenanceItem> findByBillId(String billId);
}
