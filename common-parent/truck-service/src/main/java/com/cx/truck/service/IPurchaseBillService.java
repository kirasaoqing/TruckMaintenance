package com.cx.truck.service;

import com.cx.truck.model.PurchaseBill;
import com.cx.truck.service.base.IBaseService;

import java.util.List;

public interface IPurchaseBillService extends IBaseService<PurchaseBill> {
    /**
     * 根据起始截至时间及供应商查询
     * @param beginDate
     * @param endDate
     * @param supplier
     * @return
     */
    List<PurchaseBill> findByCondition(String beginDate, String endDate, String supplier);

    /**
     * 根据材料id查询采购单信息
     * @param materialId
     * @param beginDate
     * @param endDate
     * @return
     */
    List<Integer> getBillIds(Integer materialId, String beginDate, String endDate);

    /**
     * 根据采购单id查询出采购单信息
     * @param billIds
     * @return
     */
    List<PurchaseBill> findBillsByIds(List<Integer> billIds);
}
