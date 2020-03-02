package com.cx.truck.service.impl;

import com.cx.truck.model.Brand;
import com.cx.truck.model.BrandExample;
import com.cx.truck.service.IBrandService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BrandServiceImpl extends BaseServiceImpl<Brand> implements IBrandService {
    @Override
    public void insert(Brand brand) {

    }

    @Override
    public Integer insertSelective(Brand brand) {
        return brandMapper.insertSelective(brand);
    }

    @Override
    public Integer deleteById(Integer id) {
        return brandMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(Brand brand) {

    }

    @Override
    public Brand findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<Brand> fuzzyByName(String name) {
        return null;
    }

    @Override
    public Brand findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<Brand> findAll() {
        BrandExample example = new BrandExample();
        example.setOrderByClause("id");
        return brandMapper.selectByExample(example);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        BrandExample example = new BrandExample();
        BrandExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return brandMapper.deleteByExample(example);
    }
}
