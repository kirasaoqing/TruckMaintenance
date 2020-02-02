package com.cx.truck.service.impl;

import com.cx.truck.model.VehicleType;
import com.cx.truck.model.VehicleTypeExample;
import com.cx.truck.service.IVehicleTypeService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VehicleTypeServiceImpl extends BaseServiceImpl<VehicleType> implements IVehicleTypeService {
    @Override
    public void insert(VehicleType vehicleType) {
        vehicleTypeMapper.insertSelective(vehicleType);
    }

    @Override
    public Integer insertSelective(VehicleType vehicleType) {
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
        return vehicleTypeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(VehicleType vehicleType) {

    }

    @Override
    public VehicleType findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<VehicleType> fuzzyByName(String name) {
        return null;
    }

    @Override
    public VehicleType findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<VehicleType> findAll() {
        return vehicleTypeMapper.selectByExample(null);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        VehicleTypeExample example = new VehicleTypeExample();
        VehicleTypeExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return vehicleTypeMapper.deleteByExample(example);
    }
}
