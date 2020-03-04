package com.cx.truck.service.impl;

import com.cx.truck.model.Inventory;
import com.cx.truck.model.InventoryExample;
import com.cx.truck.service.IInventoryService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class InventoryServiceImpl extends BaseServiceImpl<Inventory> implements IInventoryService {
    @Override
    public void insert(Inventory inventory) {

    }

    @Override
    public Integer insertSelective(Inventory inventory) {
        return inventoryMapper.insertSelective(inventory);
    }

    @Override
    public Integer deleteById(Integer id) {
        return null;
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(Inventory inventory) {
        inventoryMapper.updateByPrimaryKey(inventory);
    }

    @Override
    public Inventory findById(Integer id) {
        return null;
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<Inventory> fuzzyByName(String name) {
        return null;
    }

    @Override
    public Inventory findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<Inventory> findAll() {
        return null;
    }

    @Override
    public Integer deleteBatch(List<Integer> ids) {
        return null;
    }

    @Override
    public List<Inventory> findByMaterial(Integer materialId) {
        InventoryExample example = new InventoryExample();
        InventoryExample.Criteria criteria = example.createCriteria();
        criteria.andMaterialIdEqualTo(materialId);
        return inventoryMapper.selectByExample(example);
    }

    @Override
    public List<Map<String,Object>> getInventory(Integer materialId) {
        return inventoryMapper.getInventory(materialId);
    }
}
