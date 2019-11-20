package com.cx.truck.service.base;

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
     * 通过uuid查找
     * @param uuid
     * @return
     */
    public T findByUUID(String uuid);
}
