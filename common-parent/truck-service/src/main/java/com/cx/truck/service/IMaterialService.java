package com.cx.truck.service;

import com.cx.truck.model.Material;
import com.cx.truck.service.base.IBaseService;

public interface IMaterialService extends IBaseService<Material> {

    /**
     * 根据id统计物料
     * @param unitId
     * @return
     */
    Integer countByUnit(Integer unitId);
}
