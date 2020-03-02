package com.cx.truck.service.impl;

import com.cx.truck.model.PurchaseBill;
import com.cx.truck.model.PurchaseMaterial;
import com.cx.truck.model.PurchaseMaterialExample;
import com.cx.truck.service.IPurchaseBillService;
import com.cx.truck.service.IPurchaseMaterialService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PurchaseMaterialServiceImpl extends BaseServiceImpl<PurchaseMaterial> implements IPurchaseMaterialService {

    @Override
    public void insert(PurchaseMaterial purchaseMaterial) {

    }

    @Override
    public Integer insertSelective(PurchaseMaterial purchaseMaterial) {
        return purchaseMaterialMapper.insertSelective(purchaseMaterial);
    }

    @Override
    public Integer deleteById(Integer id) {
        return purchaseMaterialMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(PurchaseMaterial purchaseMaterial) {
        purchaseMaterialMapper.updateByPrimaryKeySelective(purchaseMaterial);
    }

    @Override
    public PurchaseMaterial findById(Integer id) {
        return purchaseMaterialMapper.selectByPrimaryKeyWithMaterial(id);
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<PurchaseMaterial> fuzzyByName(String name) {
        return null;
    }

    @Override
    public PurchaseMaterial findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<PurchaseMaterial> findAll() {
        return null;
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        PurchaseMaterialExample example = new PurchaseMaterialExample();
        PurchaseMaterialExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return purchaseMaterialMapper.deleteByExample(example);
    }

    @Override
    public List<PurchaseMaterial> findByBillId(Integer billId) {
        PurchaseMaterialExample example = new PurchaseMaterialExample();
        PurchaseMaterialExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdEqualTo(billId);
        return purchaseMaterialMapper.selectByExampleWithMaterial(example);
    }

    @Override
    public void deleteBatchByBillId(List<Integer> billIds) {
        PurchaseMaterialExample example = new PurchaseMaterialExample();
        PurchaseMaterialExample.Criteria criteria = example.createCriteria();
        criteria.andBillIdIn(billIds);
        purchaseMaterialMapper.deleteByExample(example);
    }
}
