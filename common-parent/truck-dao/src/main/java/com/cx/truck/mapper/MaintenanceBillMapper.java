package com.cx.truck.mapper;

import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.model.MaintenanceBillExample;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface MaintenanceBillMapper {
    int countByExample(MaintenanceBillExample example);

    int deleteByExample(MaintenanceBillExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MaintenanceBill record);

    int insertSelective(MaintenanceBill record);

    List<MaintenanceBill> selectByExample(MaintenanceBillExample example);

    /**
     * 复杂查询包含维修项及维修材料的维修单信息
     *
     * @param example
     * @return
     */
    List<MaintenanceBill> selectByExampleWithTruckAndStatus(MaintenanceBillExample example);

    MaintenanceBill selectByPrimaryKey(Integer id);

    /**
     * 按id复杂查询含维修项及维修材料的维修单信息
     *
     * @param id
     * @return
     */
    MaintenanceBill selectByPrimaryKeyWithItemsAndMaterials(Integer id);

    int updateByExampleSelective(@Param("record") MaintenanceBill record, @Param("example") MaintenanceBillExample example);

    int updateByExample(@Param("record") MaintenanceBill record, @Param("example") MaintenanceBillExample example);

    int updateByPrimaryKeySelective(MaintenanceBill record);

    int updateByPrimaryKey(MaintenanceBill record);

    /**
     * 统计车辆信息
     * @param nowDate
     * @param beginDateW
     * @param endDateW
     * @param beginDateM
     * @param endDateM
     * @return
     */
    HashMap<String, Integer> getTruckAndFinish(@Param("nowDate")String nowDate,
                                               @Param("beginDateW")String beginDateW, @Param("endDateW")String endDateW,
                                               @Param("beginDateM")String beginDateM, @Param("endDateM")String endDateM);
}