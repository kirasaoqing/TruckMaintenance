package com.cx.truck.service.impl;

import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.model.MaintenanceItemExample;
import com.cx.truck.service.IMaintenanceItemService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaintenanceItemServiceImpl extends BaseServiceImpl<MaintenanceItem> implements IMaintenanceItemService {
    @Override
    public void insert(MaintenanceItem maintenanceItem) {
        maintenanceItemMapper.insertSelective(maintenanceItem);
    }

    @Override
    public void deleteById(Integer id) {

    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(MaintenanceItem maintenanceItem) {

    }

    @Override
    public MaintenanceItem findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<MaintenanceItem> fuzzyByName(String name) {
        return null;
    }

    @Override
    public MaintenanceItem findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<MaintenanceItem> findAll() {
        return null;
    }

    @Override
    public void deleteBatch(List<Integer> ids) {

    }

    @Override
    public List<MaintenanceItem> findByBillId(String billId) {
        MaintenanceItemExample example = new MaintenanceItemExample();
        MaintenanceItemExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdEqualTo(Integer.parseInt(billId));
        return maintenanceItemMapper.selectByExample(example);
    }
}
