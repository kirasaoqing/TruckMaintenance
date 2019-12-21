package com.cx.truck.service.impl;

import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.model.MaintenanceBillExample;
import com.cx.truck.service.IMaintenanceBillService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaintenanceBillServiceImpl extends BaseServiceImpl<MaintenanceBill> implements IMaintenanceBillService {
    @Override
    public void insert(MaintenanceBill maintenanceBill) {
        maintenanceBillMapper.insertSelective(maintenanceBill);
    }

    @Override
    public void deleteById(Integer id) {

    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(MaintenanceBill maintenanceBill) {

    }

    @Override
    public MaintenanceBill findById(Integer id) {
        return maintenanceBillMapper.selectByPrimaryKeyWithItemsAndMaterials(id);
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<MaintenanceBill> fuzzyByName(String name) {
        return null;
    }

    @Override
    public MaintenanceBill findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<MaintenanceBill> findAll() {
        List<MaintenanceBill> maintenanceBills = maintenanceBillMapper.selectByExampleWithItemsAndMaterials(null);
        return maintenanceBills;
    }

    @Override
    public void deleteBatch(List<Integer> ids) {

    }

    @Override
    public Integer insertSelective(MaintenanceBill maintenanceBill) {
        maintenanceBillMapper.insertSelective(maintenanceBill);
        return maintenanceBill.getId();
    }
}
