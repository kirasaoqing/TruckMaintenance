package com.cx.truck.test;

import com.cx.truck.mapper.*;
import com.cx.truck.model.*;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * 测试dao层工作
 * 1.导入spring-test的jar包
 * 2.使用@ContextConfiguration注解指定配置文件的位置
 * 3.@Autowired所需要的组件
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MapperTest {

    @Autowired
    CustomerMapper customerMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    TruckMapper truckMapper;
    @Autowired
    MaintenanceBillMapper maintenanceBillMapper;
    @Autowired
    MaintenanceBillStatusMapper maintenanceBillStatusMapper;
    @Autowired
    SqlSession sqlSession;

    @Test
    public void testCRUD() throws ParseException {
       /* //1.创建springIOC容器
        ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath:applicationContest.xml");
        //2.从容器中获取mapper
        CustomerMapper bean = ioc.getBean(CustomerMapper.class);*/

       //======================================maintenanceBillMapper===============================
       /* System.out.println(maintenanceBillMapper);

        List<MaintenanceBill> maintenanceBills = maintenanceBillMapper.selectByExampleWithItemsAndMaterials(null);
        //List<MaintenanceBill> maintenanceBills = maintenanceBillMapper.selectByExample(null);
        System.out.println("===================bills:" + maintenanceBills);
        for (MaintenanceBill maintenanceBill : maintenanceBills) {
            System.out.println("==================items:" + maintenanceBill.getMaintenanceItemList() + "==================");
            System.out.println("==================materials:" + maintenanceBill.getMaintenanceMaterialList() + "===============");
        }*/

        //======================================maintenanceBillStatusMapper===============================
        /*List<MaintenanceBillStatus> maintenanceBillStatuses = maintenanceBillStatusMapper.selectByExample(null);
        System.out.println(maintenanceBillStatuses);*/

        //======================================truckMapper===============================
        //List<Truck> trucks = truckMapper.selectByExampleWithCusAndVT(null);
        /*Truck truck = truckMapper.selectByPrimaryKeyWithCusAndVT(1);
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        System.out.println("truck:" + truck.toString());
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        System.out.println("viechle:" + truck.getVehicleType().toString());
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        System.out.println("customer:" + truck.getCustomer().toString());*/
        /*for (Truck truck : trucks) {
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            System.out.println(truck.getViechleType().toString());
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            System.out.println(truck.getCustomerId());
            System.out.println(truck.getCustomer().getId());
        }*/

        //======================================maintenanceBillMapper=========================

        MaintenanceBillExample example = new MaintenanceBillExample();
        MaintenanceBillExample.Criteria criteria = example.createCriteria();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        criteria.andEnterdateGreaterThanOrEqualTo(format.parse("2019-12-24"));
        ArrayList<Integer> list = new ArrayList<>();
        list.add(3);
        list.add(9);
        criteria.andTruckIdIn(list);
        //criteria.andEnterdateBetween("","");
        List<MaintenanceBill> maintenanceBills = maintenanceBillMapper.selectByExampleWithTruckAndStatus(example);
        System.out.println(maintenanceBills);

        //批量生成
        /*for(){
            userMapper.insert();
        }*/
        /*CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
        for (int i = 0; i < 1000; i++) {
            String uid = UUID.randomUUID().toString().substring(0, 5) + i;
            mapper.insertSelective(new Customer(uid, uid, uid, uid, uid, uid, uid, uid));
        }*/
    }

}
