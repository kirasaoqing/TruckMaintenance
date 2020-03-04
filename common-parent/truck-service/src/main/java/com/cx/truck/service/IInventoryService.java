package com.cx.truck.service;

import com.cx.truck.model.Inventory;
import com.cx.truck.service.base.IBaseService;

import java.util.List;
import java.util.Map;

public interface IInventoryService extends IBaseService<Inventory> {

    /**
     * 根据物料id查询库存状态
     * @param materialId
     * @return
     */
    List<Inventory> findByMaterial(Integer materialId);

    /**
     * 根据id获取库存
     * @param
     * @return
     */
    List<Map<String,Object>> getInventory(Integer materialId);
}
