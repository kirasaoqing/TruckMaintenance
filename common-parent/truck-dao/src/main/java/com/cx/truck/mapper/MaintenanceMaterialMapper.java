package com.cx.truck.mapper;

import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.model.MaintenanceMaterialExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MaintenanceMaterialMapper {
    int countByExample(MaintenanceMaterialExample example);

    int deleteByExample(MaintenanceMaterialExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MaintenanceMaterial record);

    int insertSelective(MaintenanceMaterial record);

    List<MaintenanceMaterial> selectByExample(MaintenanceMaterialExample example);

    /**
     * 根据复杂条件联合查询出带物料的维修物料信息
     * @param example
     * @return
     */
    List<MaintenanceMaterial> selectByExampleWithMaterial(MaintenanceMaterialExample example);

    MaintenanceMaterial selectByPrimaryKey(Integer id);

    /**
     * 根据id联合查询出带物料的维修物料信息
     * @param id
     * @return
     */
    MaintenanceMaterial selectByPrimaryKeyWithMaterial(Integer id);

    int updateByExampleSelective(@Param("record") MaintenanceMaterial record, @Param("example") MaintenanceMaterialExample example);

    int updateByExample(@Param("record") MaintenanceMaterial record, @Param("example") MaintenanceMaterialExample example);

    int updateByPrimaryKeySelective(MaintenanceMaterial record);

    int updateByPrimaryKey(MaintenanceMaterial record);
}