package com.cx.truck.service.impl;

import com.cx.truck.model.MaintenanceBillStatus;
import com.cx.truck.model.MaintenanceBillStatusExample;
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
    public Integer insertSelective(MaintenanceBillStatus maintenanceBillStatus) {
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
        return 0;
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
        MaintenanceBillStatusExample example = new MaintenanceBillStatusExample();
        example.setOrderByClause("id");
        return maintenanceBillStatusMapper.selectByExample(example);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        return 0;
    }
}
