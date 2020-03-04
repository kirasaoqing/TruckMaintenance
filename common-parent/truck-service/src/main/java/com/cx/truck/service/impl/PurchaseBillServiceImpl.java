package com.cx.truck.service.impl;

import com.cx.truck.model.PurchaseBill;
import com.cx.truck.model.PurchaseBillExample;
import com.cx.truck.service.IPurchaseBillService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class PurchaseBillServiceImpl extends BaseServiceImpl<PurchaseBill> implements IPurchaseBillService {
    @Override
    public void insert(PurchaseBill purchaseBill) {

    }

    @Override
    public Integer insertSelective(PurchaseBill purchaseBill) {
        return purchaseBillMapper.insertSelective(purchaseBill);
    }

    @Override
    public Integer deleteById(Integer id) {
        return purchaseBillMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(PurchaseBill purchaseBill) {
        purchaseBillMapper.updateByPrimaryKeySelective(purchaseBill);
    }

    @Override
    public PurchaseBill findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<PurchaseBill> fuzzyByName(String name) {
        return null;
    }

    @Override
    public PurchaseBill findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<PurchaseBill> findAll() {
        return purchaseBillMapper.selectByExample(null);
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        PurchaseBillExample example = new PurchaseBillExample();
        PurchaseBillExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        return purchaseBillMapper.deleteByExample(example);
    }

    @Override
    public List<PurchaseBill> findByCondition(String beginDate, String endDate, String supplier) {
        PurchaseBillExample example = new PurchaseBillExample();
        PurchaseBillExample.Criteria criteria = example.createCriteria();
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        try {
            if (beginDate != null && endDate != null) {
                criteria.andPurchasedateBetween(format.parse(beginDate), format.parse(endDate));
            }
            if (beginDate != null && endDate == null) {
                criteria.andPurchasedateGreaterThanOrEqualTo(format.parse(beginDate));
            }
            if (beginDate == null && endDate != null) {
                criteria.andPurchasedateLessThanOrEqualTo(format.parse(endDate));
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        criteria.andSupplierLike("%" + supplier + "%");

        return purchaseBillMapper.selectByExample(example);
    }

    @Override
    public List<Integer> getBillIds(Integer materialId, String beginDate, String endDate) {
        return purchaseBillMapper.getBillIds(materialId, beginDate, endDate);
    }

    @Override
    public List<PurchaseBill> findBillsByIds(List<Integer> billIds) {
        PurchaseBillExample example = new PurchaseBillExample();
        PurchaseBillExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(billIds);
        return purchaseBillMapper.selectByExample(example);
    }
}
