package com.cx.truck.mapper;

import com.cx.truck.model.Material;
import com.cx.truck.model.MaterialExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MaterialMapper {
    int countByExample(MaterialExample example);

    int deleteByExample(MaterialExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Material record);

    int insertSelective(Material record);

    List<Material> selectByExample(MaterialExample example);

    /**
     * 按条件查询出包含单位信息的材料信息
     * @param example
     * @return
     */
    List<Material> selectByExampleWithUnit(MaterialExample example);

    Material selectByPrimaryKey(Integer id);

    /**
     * 按id查询出包含单位信息的材料信息
     * @param id
     * @return
     */
    Material selectByPrimaryKeyWithUnit(Integer id);

    int updateByExampleSelective(@Param("record") Material record, @Param("example") MaterialExample example);

    int updateByExample(@Param("record") Material record, @Param("example") MaterialExample example);

    int updateByPrimaryKeySelective(Material record);

    int updateByPrimaryKey(Material record);
}