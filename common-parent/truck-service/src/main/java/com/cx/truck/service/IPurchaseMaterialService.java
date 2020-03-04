package com.cx.truck.service;

import com.cx.truck.model.PurchaseBill;
import com.cx.truck.model.PurchaseMaterial;
import com.cx.truck.service.base.IBaseService;

import java.util.List;

public interface IPurchaseMaterialService extends IBaseService<PurchaseMaterial> {

    /**
     * 根据维修单id查询采购项目
     *
     * @param billId
     * @return
     */
    List<PurchaseMaterial> findByBillId(Integer billId);

    /**
     * 根据单据id批量删除采购材料信息
     *
     * @param billIds
     */
    void deleteBatchByBillId(List<Integer> billIds);


}
