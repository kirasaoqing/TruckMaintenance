package com.cx.truck.mapper;

import com.cx.truck.model.PurchaseBill;
import com.cx.truck.model.PurchaseBillExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PurchaseBillMapper {
    int countByExample(PurchaseBillExample example);

    int deleteByExample(PurchaseBillExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PurchaseBill record);

    int insertSelective(PurchaseBill record);

    List<PurchaseBill> selectByExample(PurchaseBillExample example);

    PurchaseBill selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PurchaseBill record, @Param("example") PurchaseBillExample example);

    int updateByExample(@Param("record") PurchaseBill record, @Param("example") PurchaseBillExample example);

    int updateByPrimaryKeySelective(PurchaseBill record);

    int updateByPrimaryKey(PurchaseBill record);

    /**
     * 根据材料id查询出采购单id
     * @param id
     * @return
     */
    List<Integer> getBillIds(@Param(value="id") Integer id,
                             @Param("beginDate")String beginDate,
                             @Param("endDate")String endDate);
}