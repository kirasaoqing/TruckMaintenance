package com.cx.truck.model;

public class MaintenanceBillStatus {
    private Integer id;

    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public MaintenanceBillStatus() {
    }

    public MaintenanceBillStatus(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public String toString() {
        return "MaintenanceBillStatus{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}