package com.cx.truck.service.impl;

import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.model.MaintenanceBillExample;
import com.cx.truck.service.IMaintenanceBillService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class MaintenanceBillServiceImpl extends BaseServiceImpl<MaintenanceBill> implements IMaintenanceBillService {
    @Override
    public void insert(MaintenanceBill maintenanceBill) {
        maintenanceBillMapper.insertSelective(maintenanceBill);
    }

    @Override
    public Integer insertSelective(MaintenanceBill maintenanceBill) {
        maintenanceBillMapper.insertSelective(maintenanceBill);
        return maintenanceBill.getId();
    }

    @Override
    public void deleteById(Integer id) {
        maintenanceBillMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(MaintenanceBill maintenanceBill) {
        maintenanceBillMapper.updateByPrimaryKeySelective(maintenanceBill);
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
        List<MaintenanceBill> maintenanceBills = maintenanceBillMapper.selectByExampleWithTruckAndStatus(null);
        return maintenanceBills;
    }

    @Override
    public void deleteBatch(List<Integer> ids) {
        MaintenanceBillExample example = new MaintenanceBillExample();
        MaintenanceBillExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        maintenanceBillMapper.deleteByExample(example);
    }


    @Override
    public List<MaintenanceBill> findByCondition(String beginDate, String endDate, Integer truckId) {
        MaintenanceBillExample example = new MaintenanceBillExample();
        MaintenanceBillExample.Criteria criteria = example.createCriteria();
        SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd日");
        try {
            if (beginDate != null && endDate != null) {
                criteria.andEnterdateBetween(format.parse(beginDate), format.parse(endDate));
            }
            if (beginDate != null && endDate == null) {
                criteria.andEnterdateGreaterThanOrEqualTo(format.parse(beginDate));
            }
            if (beginDate == null && endDate != null) {
                criteria.andEnterdateLessThanOrEqualTo(format.parse(endDate));
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        if (truckId > 0) {
            criteria.andTruckIdEqualTo(truckId);
        }
        return maintenanceBillMapper.selectByExampleWithTruckAndStatus(example);
    }
}
