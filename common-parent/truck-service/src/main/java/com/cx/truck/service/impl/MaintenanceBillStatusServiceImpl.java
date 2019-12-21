package com.cx.truck.service.impl;

import com.cx.truck.model.MaintenanceBillStatus;
import com.cx.truck.service.IMaintenanceBillStatusService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaintenanceBillStatusServiceImpl extends BaseServiceImpl<MaintenanceBillStatus> implements IMaintenanceBillStatusService {
    @Override
    public void insert(MaintenanceBillStatus maintenanceBillStatus) {

    }

    @Override
    public void deleteById(Integer id) {

    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(MaintenanceBillStatus maintenanceBillStatus) {

    }

    @Override
    public MaintenanceBillStatus findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<MaintenanceBillStatus> fuzzyByName(String name) {
        return null;
    }

    @Override
    public MaintenanceBillStatus findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<MaintenanceBillStatus> findAll() {
        return maintenanceBillStatusMapper.selectByExample(null);
    }

    @Override
    public void deleteBatch(List<Integer> ids) {

    }
}
