package com.cx.truck.test;

import com.cx.truck.mapper.CustomerMapper;
import com.cx.truck.mapper.UserMapper;
import com.cx.truck.model.Customer;
import com.cx.truck.model.User;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
    SqlSession sqlSession;

    @Test
    public void testCRUD() {
       /* //1.创建springIOC容器
        ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath:applicationContest.xml");
        //2.从容器中获取mapper
        CustomerMapper bean = ioc.getBean(CustomerMapper.class);*/

        System.out.println(customerMapper);

        System.out.println(userMapper);

        User user = userMapper.findById(1);
        System.out.println(user);

        //批量生成
        /*for(){
            userMapper.insert();
        }*/
        CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
        for (int i = 0; i < 1000; i++) {
            String uid = UUID.randomUUID().toString().substring(0, 5) + i;
            mapper.insertSelective(new Customer(uid, uid, uid, uid, uid, uid, uid, uid));
        }
    }

}
