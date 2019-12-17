package com.cx.truck.service.impl;

import com.cx.truck.model.Worker;
import com.cx.truck.model.WorkerExample;
import com.cx.truck.service.IWorkerService;
import com.cx.truck.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkerServiceImpl extends BaseServiceImpl<Worker> implements IWorkerService {
    @Override
    public void insert(Worker worker) {
        workerMapper.insertSelective(worker);
    }

    @Override
    public void deleteById(Integer id) {
        workerMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByUUID(String uuid) {

    }

    @Override
    public void update(Worker worker) {
        workerMapper.updateByPrimaryKeySelective(worker);
    }

    @Override
    public Worker findById(Integer id) {
        return workerMapper.selectByPrimaryKey(id);
    }

    @Override
    public Boolean findByName(String name) {
        return null;
    }

    @Override
    public List<Worker> fuzzyByName(String name) {
        WorkerExample example = new WorkerExample();
        WorkerExample.Criteria criteria = example.createCriteria();
        criteria.andNameLike(name);
        return workerMapper.selectByExample(example);
    }

    @Override
    public Worker findByUUID(String uuid) {
        return null;
    }

    @Override
    public List<Worker> findAll() {
        return workerMapper.selectByExample(null);
    }

    @Override
    public void deleteBatch(List<Integer> ids) {
        WorkerExample example = new WorkerExample();
        WorkerExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        workerMapper.deleteByExample(example);
    }

    @Override
    public Boolean findByIdentity(String identity) {
        WorkerExample example = new WorkerExample();
        WorkerExample.Criteria criteria = example.createCriteria();
        criteria.andIdentityEqualTo(identity);
        int count = workerMapper.countByExample(example);
        return count == 0;
    }
}
