package com.cx.truck.service.impl;

import com.cx.truck.mapper.UnitMapper;
import com.cx.truck.model.Unit;
import com.cx.truck.model.UnitExample;
import com.cx.truck.service.IUnitService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitServiceImpl extends BaseServiceImpl<Unit> implements IUnitService {
    @Override
    public void insert(Unit unit) {
        unitMapper.insertSelective(unit);
    }

    @Override
    public Integer insertSelective(Unit unit) {
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
        return unitMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(Unit unit) {
        unitMapper.updateByPrimaryKeySelective(unit);
    }

    @Override
    public Unit findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<Unit> fuzzyByName(String name) {
        return null;
    }

    @Override
    public Unit findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<Unit> findAll() {
        UnitExample example = new UnitExample();
        example.setOrderByClause("id");
        return unitMapper.selectByExample(example);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        UnitExample example = new UnitExample();
        UnitExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return unitMapper.deleteByExample(example);
    }
}
