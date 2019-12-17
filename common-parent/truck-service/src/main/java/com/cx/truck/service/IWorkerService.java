package com.cx.truck.service;

import com.cx.truck.model.Worker;
import com.cx.truck.service.base.IBaseService;

public interface IWorkerService extends IBaseService<Worker> {
    Boolean findByIdentity(String identity);
}
