package com.cx.truck.service.impl;

import com.cx.truck.model.Truck;
import com.cx.truck.model.TruckExample;
import com.cx.truck.service.ITruckService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TruckServiceImpl extends BaseServiceImpl<Truck> implements ITruckService {
    @Override
    public void insert(Truck truck) {
        truckMapper.insertSelective(truck);
    }

    @Override
    public Integer insertSelective(Truck truck) {
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
        return truckMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(Truck truck) {
        truckMapper.updateByPrimaryKeySelective(truck);
    }

    @Override
    public Truck findById(Integer id) {
        return truckMapper.selectByPrimaryKeyWithCusAndVT(id);
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<Truck> fuzzyByName(String name) {
        TruckExample example = new TruckExample();
        TruckExample.Criteria criteria = example.createCriteria();
        criteria.andPlatenumberLike(name);
        List<Truck> trucks = truckMapper.selectByExampleWithCusAndVT(example);
        return trucks;
    }

    @Override
    public Truck findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<Truck> findAll() {
        return truckMapper.selectByExampleWithCusAndVT(null);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        TruckExample example = new TruckExample();
        TruckExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return truckMapper.deleteByExample(example);
    }

    @Override
    public Truck findByPlateNumber(String plateNumber) {
        TruckExample example = new TruckExample();
        TruckExample.Criteria criteria = example.createCriteria();
        criteria.andPlatenumberEqualTo(plateNumber);
        List<Truck> trucks = truckMapper.selectByExample(example);
        if (trucks.size() > 0) {
            return trucks.get(0);
        }else{
            return null;
        }
    }

    @Override
    public Integer countByCustomer(Integer CustomerId) {
        TruckExample example = new TruckExample();
        TruckExample.Criteria criteria = example.createCriteria();
        criteria.andCustomerIdEqualTo(CustomerId);
        return truckMapper.countByExample(example);
    }
}
