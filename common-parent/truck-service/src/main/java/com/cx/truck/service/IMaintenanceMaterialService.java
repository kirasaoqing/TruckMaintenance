package com.cx.truck.service;

import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.service.base.IBaseService;

import java.util.List;

public interface IMaintenanceMaterialService extends IBaseService<MaintenanceMaterial> {
    List<MaintenanceMaterial> findByBillId(String billId);
}
