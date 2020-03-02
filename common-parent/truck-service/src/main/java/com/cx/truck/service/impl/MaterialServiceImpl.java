package com.cx.truck.service.impl;

import com.cx.truck.model.Material;
import com.cx.truck.model.MaterialExample;
import com.cx.truck.service.IMaterialService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaterialServiceImpl extends BaseServiceImpl<Material> implements IMaterialService {
    @Override
    public void insert(Material material) {
        materialMapper.insertSelective(material);
    }

    @Override
    public Integer insertSelective(Material material) {
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
        return materialMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(Material material) {
        materialMapper.updateByPrimaryKeySelective(material);
    }

    @Override
    public Material findById(Integer id) {
        return materialMapper.selectByPrimaryKeyWithUnit(id);
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<Material> fuzzyByName(String name) {
        MaterialExample example = new MaterialExample();
        MaterialExample.Criteria criteria = example.createCriteria();
        criteria.andNameLike(name);
        return materialMapper.selectByExampleWithUnit(example);
    }

    @Override
    public Material findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<Material> findAll() {
        MaterialExample example = new MaterialExample();
        example.setOrderByClause("id");
        return materialMapper.selectByExampleWithUnit(example);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        return null;
    }

    @Override
    public Integer countByUnit(Integer unitId) {
        MaterialExample example = new MaterialExample();
        MaterialExample.Criteria criteria = example.createCriteria();
        criteria.andUnitIdEqualTo(unitId);
        return materialMapper.countByExample(example);
    }
}
