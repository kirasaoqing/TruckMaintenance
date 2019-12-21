package com.cx.truck.mapper;

import com.cx.truck.model.MaintenanceBillStatus;
import com.cx.truck.model.MaintenanceBillStatusExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MaintenanceBillStatusMapper {
    int countByExample(MaintenanceBillStatusExample example);

    int deleteByExample(MaintenanceBillStatusExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MaintenanceBillStatus record);

    int insertSelective(MaintenanceBillStatus record);

    List<MaintenanceBillStatus> selectByExample(MaintenanceBillStatusExample example);

    MaintenanceBillStatus selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MaintenanceBillStatus record, @Param("example") MaintenanceBillStatusExample example);

    int updateByExample(@Param("record") MaintenanceBillStatus record, @Param("example") MaintenanceBillStatusExample example);

    int updateByPrimaryKeySelective(MaintenanceBillStatus record);

    int updateByPrimaryKey(MaintenanceBillStatus record);
}