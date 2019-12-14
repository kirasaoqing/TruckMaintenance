package com.cx.truck.mapper;

import com.cx.truck.model.Truck;
import com.cx.truck.model.TruckExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TruckMapper {
    int countByExample(TruckExample example);

    int deleteByExample(TruckExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Truck record);

    int insertSelective(Truck record);

    List<Truck> selectByExample(TruckExample example);

    Truck selectByPrimaryKey(Integer id);

    List<Truck> selectByExampleWithCusAndVT(TruckExample example);

    Truck selectByPrimaryKeyWithCusAndVT(Integer id);

    int updateByExampleSelective(@Param("record") Truck record, @Param("example") TruckExample example);

    int updateByExample(@Param("record") Truck record, @Param("example") TruckExample example);

    int updateByPrimaryKeySelective(Truck record);

    int updateByPrimaryKey(Truck record);
}