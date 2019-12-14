package com.cx.truck.mapper;

import com.cx.truck.model.VehicleType;
import com.cx.truck.model.VehicleTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VehicleTypeMapper {
    int countByExample(VehicleTypeExample example);

    int deleteByExample(VehicleTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(VehicleType record);

    int insertSelective(VehicleType record);

    List<VehicleType> selectByExample(VehicleTypeExample example);

    VehicleType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") VehicleType record, @Param("example") VehicleTypeExample example);

    int updateByExample(@Param("record") VehicleType record, @Param("example") VehicleTypeExample example);

    int updateByPrimaryKeySelective(VehicleType record);

    int updateByPrimaryKey(VehicleType record);
}