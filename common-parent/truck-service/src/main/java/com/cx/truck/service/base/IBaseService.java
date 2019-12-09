package com.cx.truck.service.base;

import java.util.List;

public interface IBaseService<T> {
    /**
     * 新增
     * @param t
     */
    public void insert(T t);

    /**
     * 通过id删除
     * @param id
     */
    public void deleteById(Integer id);

    /**
     * 通过uuid删除
     * @param uuid
     */
    public void deleteByUUID(String uuid);

    /**
     * 修改
     * @param t
     */
    public void update(T t);

    /**
     * 通过id查找
     * @param id
     * @return
     */
    public T findById(Integer id);

    /**
     * 通过名称查找
     * @param name
     * @return true:不存在 false:存在
     */
    public boolean findByName(String name);

    /**
     * 通过uuid查找
     * @param uuid
     * @return
     */
    public T findByUUID(String uuid);

    /**
     * 查询出所有
     * @return
     */
    public List<T> findAll();
}
