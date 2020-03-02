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
}
