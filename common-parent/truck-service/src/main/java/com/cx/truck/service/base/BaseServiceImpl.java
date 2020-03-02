package com.cx.truck.service.base;

import com.cx.truck.mapper.*;
import com.cx.truck.mapper.base.BaseMapper;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class BaseServiceImpl<T> implements IBaseService<T> {

    /**
     * 统一管理mapper:UserMapper
     */
    @Autowired
    protected UserMapper userMapper;

    /**
     * 统一管理mapper:CustomerMapper
     */
    @Autowired
    protected CustomerMapper customerMapper;

    /**
     * 统一管理mapper:TruckMapper
     */
    @Autowired
    protected TruckMapper truckMapper;

    /**
     * 统一管理mapper:VehicleTypeMapper
     */
    @Autowired
    protected VehicleTypeMapper vehicleTypeMapper;

    /**
     * 统一管理mapper:WorkerMapper
     */
    @Autowired
    protected WorkerMapper workerMapper;

    /**
     * 统一管理mapper:MaintenanceBillMapper
     */
    @Autowired
    protected MaintenanceBillMapper maintenanceBillMapper;

    /**
     * 统一管理mapper:MaintenanceBillStatusMapper
     */
    @Autowired
    protected MaintenanceBillStatusMapper maintenanceBillStatusMapper;

    /**
     * 统一管理mapper:MaintenanceItemMapper
     */
    @Autowired
    protected MaintenanceItemMapper maintenanceItemMapper;

    /**
     * 统一管理mapper:MaintenanceMaterialMapper
     */
    @Autowired
    protected MaintenanceMaterialMapper maintenanceMaterialMapper;

    /**
     * 统一管理mapper:UnitMapper
     */
    @Autowired
    protected UnitMapper unitMapper;

    /**
     * 统一管理mapper:materialMapper
     */
    @Autowired
    protected MaterialMapper materialMapper;

    /**
     * 统一管理mapper:purchaseBillMapper
     */
    @Autowired
    protected PurchaseBillMapper purchaseBillMapper;

    /**
     * 统一管理mapper:purchaseMaterialMapper
     */
    @Autowired
    protected PurchaseMaterialMapper purchaseMaterialMapper;

    /**
     * 统一管理mapper:brandMapper
     */
    @Autowired
    protected BrandMapper brandMapper;
}
