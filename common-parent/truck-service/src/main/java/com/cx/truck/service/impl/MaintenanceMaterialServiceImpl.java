package com.cx.truck.service.impl;

import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.model.MaintenanceMaterialExample;
import com.cx.truck.service.IMaintenanceMaterialService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaintenanceMaterialServiceImpl extends BaseServiceImpl<MaintenanceMaterial> implements IMaintenanceMaterialService {
    @Override
    public void insert(MaintenanceMaterial maintenanceMaterial) {
        maintenanceMaterialMapper.insertSelective(maintenanceMaterial);
    }

    @Override
    public void deleteById(Integer id) {

    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(MaintenanceMaterial maintenanceMaterial) {

    }

    @Override
    public MaintenanceMaterial findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<MaintenanceMaterial> fuzzyByName(String name) {
        return null;
    }

    @Override
    public MaintenanceMaterial findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<MaintenanceMaterial> findAll() {
        return null;
    }

    @Override
    public void deleteBatch(List<Integer> ids) {

    }

    @Override
    public List<MaintenanceMaterial> findByBillId(String billId) {
        MaintenanceMaterialExample example = new MaintenanceMaterialExample();
        MaintenanceMaterialExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdEqualTo(Integer.parseInt(billId));
        return maintenanceMaterialMapper.selectByExample(example);
    }
}
