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
    public Integer insertSelective(MaintenanceMaterial maintenanceMaterial) {
        maintenanceMaterialMapper.insertSelective(maintenanceMaterial);
        return maintenanceMaterial.getId();
    }

    @Override
    public Integer deleteById(Integer id) {
        return maintenanceMaterialMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(MaintenanceMaterial maintenanceMaterial) {
        maintenanceMaterialMapper.updateByPrimaryKeySelective(maintenanceMaterial);
    }

    @Override
    public MaintenanceMaterial findById(Integer id) {
        return maintenanceMaterialMapper.selectByPrimaryKey(id);
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
    public Integer deleteBatch(List<Integer> ids) {
        MaintenanceMaterialExample example = new MaintenanceMaterialExample();
        MaintenanceMaterialExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return maintenanceMaterialMapper.deleteByExample(example);
    }

    @Override
    public List<MaintenanceMaterial> findByBillId(Integer billId) {
        MaintenanceMaterialExample example = new MaintenanceMaterialExample();
        MaintenanceMaterialExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdEqualTo(billId);
        return maintenanceMaterialMapper.selectByExample(example);
    }

    @Override
    public void deleteBatchByBillId(List<Integer> billIds) {
        MaintenanceMaterialExample example = new MaintenanceMaterialExample();
        MaintenanceMaterialExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdIn(billIds);
        maintenanceMaterialMapper.deleteByExample(example);
    }
}
