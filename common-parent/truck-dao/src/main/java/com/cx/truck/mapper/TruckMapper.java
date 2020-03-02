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

    /**
     * 按条件关联查询出包含客户和车型信息的车辆信息
     * @param example
     * @return
     */
    List<Truck> selectByExampleWithCsmVTBrd(TruckExample example);

    /**
     * 按id查询出包含客户和车型信息的车辆信息
     * @param id
     * @return
     */
    Truck selectByPrimaryKeyWithCsmVTBrd(Integer id);

    int updateByExampleSelective(@Param("record") Truck record, @Param("example") TruckExample example);

    int updateByExample(@Param("record") Truck record, @Param("example") TruckExample example);

    int updateByPrimaryKeySelective(Truck record);

    int updateByPrimaryKey(Truck record);
}