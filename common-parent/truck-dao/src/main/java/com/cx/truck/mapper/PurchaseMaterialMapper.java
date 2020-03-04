package com.cx.truck.mapper;

import com.cx.truck.model.PurchaseMaterial;
import com.cx.truck.model.PurchaseMaterialExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PurchaseMaterialMapper {
    int countByExample(PurchaseMaterialExample example);

    int deleteByExample(PurchaseMaterialExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PurchaseMaterial record);

    int insertSelective(PurchaseMaterial record);

    List<PurchaseMaterial> selectByExample(PurchaseMaterialExample example);
    PurchaseMaterial selectByPrimaryKey(Integer id);

    /**
     * 根据example联查带物料的采购明细
     * @param example
     * @return
     */
    List<PurchaseMaterial> selectByExampleWithMaterial(PurchaseMaterialExample example);
    /**
     * 根据id联查带物料的采购明细
     * @param id
     * @return
     */
    PurchaseMaterial selectByPrimaryKeyWithMaterial(Integer id);

    int updateByExampleSelective(@Param("record") PurchaseMaterial record, @Param("example") PurchaseMaterialExample example);

    int updateByExample(@Param("record") PurchaseMaterial record, @Param("example") PurchaseMaterialExample example);

    int updateByPrimaryKeySelective(PurchaseMaterial record);

    int updateByPrimaryKey(PurchaseMaterial record);

}