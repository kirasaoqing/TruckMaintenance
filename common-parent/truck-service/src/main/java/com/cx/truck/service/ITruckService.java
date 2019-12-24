package com.cx.truck.service;

import com.cx.truck.model.Truck;
import com.cx.truck.service.base.IBaseService;

public interface ITruckService extends IBaseService<Truck> {
    Truck findByPlateNumber(String plateNumber);
}
