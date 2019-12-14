package com.cx.truck;

import static org.junit.Assert.assertTrue;

import com.cx.truck.mapper.UserMapper;
import com.cx.truck.model.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

/**
 * Unit test for simple App.
 */
public class AppTest
{

    /*SqlSession sqlSession;

    @Before
    public void before() throws IOException {
        System.out.println("before...获取session");
        //a)	读取配置文件；
        InputStream is = Resources.getResourceAsStream("classpath*:applicationContext.xml");
        //InputStream is = this.getClass().getClassLoader().getResourceAsStream("applicationContext.xml"); //拿到资源
        System.out.println(is);
        //b)	通过SqlSessionFactoryBuilder创建SqlSessionFactory会话工厂。
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
        //c)	通过SqlSessionFactory创建SqlSession。
        sqlSession = sessionFactory.openSession();
    }

    @After
    public void after() {
        System.out.println("after...关闭session");
        //e)	关闭SqlSession。
        sqlSession.close();
    }

    *//**
     * Rigorous Test :-)
     *//*
    @Test
    public void test01(){
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User user = mapper.findById(1);
        System.out.println(user);
    }*/
}
