package com.cx.truck.service;

import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.service.base.IBaseService;

import java.util.List;

public interface IMaintenanceMaterialService extends IBaseService<MaintenanceMaterial> {

    /**
     * 根据维修单id查询出维修材料信息
     * @param billId
     * @return
     */
    List<MaintenanceMaterial> findByBillId(Integer billId);

    /**
     * 根据维修单id批量删除材料信息
     * @param billIds
     */
    void deleteBatchByBillId(List<Integer> billIds);

}
