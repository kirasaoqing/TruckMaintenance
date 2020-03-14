package com.cx.truck.service.impl;

import com.cx.truck.mapper.MaintenanceMaterialMapper;
import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.model.MaintenanceBillExample;
import com.cx.truck.service.IMaintenanceBillService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

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
    public Integer deleteById(Integer id) {
        return maintenanceBillMapper.deleteByPrimaryKey(id);
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
        return maintenanceBillMapper.selectByPrimaryKeyWithTruckAndStatus(id);
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
        MaintenanceBillExample example = new MaintenanceBillExample();
        example.setOrderByClause("b.id");
        List<MaintenanceBill> maintenanceBills = maintenanceBillMapper.selectByExampleWithTruckAndStatus(example);
        return maintenanceBills;
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        MaintenanceBillExample example = new MaintenanceBillExample();
        MaintenanceBillExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return maintenanceBillMapper.deleteByExample(example);
    }


    @Override
    public List<MaintenanceBill> findByCondition(String beginDate, String endDate, Integer truckId) {
        MaintenanceBillExample example = new MaintenanceBillExample();
        MaintenanceBillExample.Criteria criteria = example.createCriteria();
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
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

    @Override
    public Integer countByTruck(Integer truckId) {
        MaintenanceBillExample example = new MaintenanceBillExample();
        MaintenanceBillExample.Criteria criteria = example.createCriteria();
        criteria.andTruckIdEqualTo(truckId);
        return maintenanceBillMapper.countByExample(example);
    }

    @Override
    public HashMap<String, Integer> getTruckCounts(String date) {
        String nowDate, beginDateW, endDateW, beginDateM, endDateM;
        nowDate = date;
        beginDateW = date;
        endDateW = date;
        beginDateM = date;
        endDateM = date;
        // 获取当月第一天和最后一天
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        // 指定一个日期
        try {
            Date dates = format.parse(date);
            // 对 calendar 设置为 date 所定的日期
            Calendar cale = Calendar.getInstance(Locale.CHINA);
            cale.setFirstDayOfWeek(Calendar.MONDAY);
            // 获取当前周的第一天
            cale.setTime(dates);
            cale.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);//周一
            beginDateW = format.format(cale.getTime());
            // 获取当前周的最后一天
            cale.setTime(dates);
            cale.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);//周一
            endDateW = format.format(cale.getTime());
            // 获取当前月的第一天
            cale.setTime(dates);
            cale.add(Calendar.MONTH, 0);
            cale.set(Calendar.DAY_OF_MONTH, 1);
            beginDateM = format.format(cale.getTime());
            // 获取当前月的最后一天
            cale.setTime(dates);
            cale.add(Calendar.MONTH, 1);
            cale.set(Calendar.DAY_OF_MONTH, 0);
            endDateM = format.format(cale.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return maintenanceBillMapper.getTruckAndFinish(nowDate,beginDateW,endDateW,beginDateM,endDateM);
    }

    @Override
    public MaintenanceBill findByIdWithItemAndMaterial(Integer id) {
        return maintenanceBillMapper.selectByPrimaryKeyWithItemsAndMaterials(id);
    }
}
