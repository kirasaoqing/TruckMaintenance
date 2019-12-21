package com.cx.truck.mapper;

import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.model.MaintenanceItemExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MaintenanceItemMapper {
    int countByExample(MaintenanceItemExample example);

    int deleteByExample(MaintenanceItemExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MaintenanceItem record);

    int insertSelective(MaintenanceItem record);

    List<MaintenanceItem> selectByExample(MaintenanceItemExample example);

    MaintenanceItem selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MaintenanceItem record, @Param("example") MaintenanceItemExample example);

    int updateByExample(@Param("record") MaintenanceItem record, @Param("example") MaintenanceItemExample example);

    int updateByPrimaryKeySelective(MaintenanceItem record);

    int updateByPrimaryKey(MaintenanceItem record);
}