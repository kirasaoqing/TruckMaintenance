package com.cx.truck.model;

import javax.validation.constraints.Pattern;

public class Customer {
    private Integer id;

    @Pattern(regexp = "(^[a-zA-Z0-9_-]{3,16}$)|(^[\\u2E80-\\u9FFF]{2,5}$)",
                message = "用户名必须是2-5位中文或者6-16位英文和数字的组合")
    private String name;

    private String phone;

    private String address;

    private String contactor;

    private String telephone;

    private String taxid;

    private String bank;

    private String account;

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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getContactor() {
        return contactor;
    }

    public void setContactor(String contactor) {
        this.contactor = contactor == null ? null : contactor.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getTaxid() {
        return taxid;
    }

    public void setTaxid(String taxid) {
        this.taxid = taxid == null ? null : taxid.trim();
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank == null ? null : bank.trim();
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public Customer() {
    }

    public Customer(Integer id, String name, String phone, String address, String contactor, String telephone, String taxid, String bank, String account) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.contactor = contactor;
        this.telephone = telephone;
        this.taxid = taxid;
        this.bank = bank;
        this.account = account;
    }

    public Customer(String name, String phone, String address, String contactor, String telephone, String taxid, String bank, String account) {
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.contactor = contactor;
        this.telephone = telephone;
        this.taxid = taxid;
        this.bank = bank;
        this.account = account;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", contactor='" + contactor + '\'' +
                ", telephone='" + telephone + '\'' +
                ", taxid='" + taxid + '\'' +
                ", bank='" + bank + '\'' +
                ", account='" + account + '\'' +
                '}';
    }
}