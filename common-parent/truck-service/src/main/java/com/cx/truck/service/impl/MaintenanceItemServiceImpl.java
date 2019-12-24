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
    public Integer insertSelective(MaintenanceItem maintenanceItem) {
        maintenanceItemMapper.insertSelective(maintenanceItem);
        return maintenanceItem.getId();
    }

    @Override
    public void deleteById(Integer id) {
        maintenanceItemMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(MaintenanceItem maintenanceItem) {
        maintenanceItemMapper.updateByPrimaryKeySelective(maintenanceItem);
    }

    @Override
    public MaintenanceItem findById(Integer id) {
        return maintenanceItemMapper.selectByPrimaryKey(id);
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
        MaintenanceItemExample example = new MaintenanceItemExample();
        MaintenanceItemExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        maintenanceItemMapper.deleteByExample(example);
    }

    @Override
    public List<MaintenanceItem> findByBillId(Integer billId) {
        MaintenanceItemExample example = new MaintenanceItemExample();
        MaintenanceItemExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdEqualTo(billId);
        return maintenanceItemMapper.selectByExample(example);
    }

    @Override
    public void deleteBatchByBillId(List<Integer> billIds) {
        MaintenanceItemExample example = new MaintenanceItemExample();
        MaintenanceItemExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdIn(billIds);
        maintenanceItemMapper.deleteByExample(example);
    }
}
