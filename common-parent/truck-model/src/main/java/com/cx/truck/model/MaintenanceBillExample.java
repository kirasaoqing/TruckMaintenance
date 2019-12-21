package com.cx.truck.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MaintenanceBillExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MaintenanceBillExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTruckIdIsNull() {
            addCriterion("truck_id is null");
            return (Criteria) this;
        }

        public Criteria andTruckIdIsNotNull() {
            addCriterion("truck_id is not null");
            return (Criteria) this;
        }

        public Criteria andTruckIdEqualTo(Integer value) {
            addCriterion("truck_id =", value, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdNotEqualTo(Integer value) {
            addCriterion("truck_id <>", value, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdGreaterThan(Integer value) {
            addCriterion("truck_id >", value, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("truck_id >=", value, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdLessThan(Integer value) {
            addCriterion("truck_id <", value, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdLessThanOrEqualTo(Integer value) {
            addCriterion("truck_id <=", value, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdIn(List<Integer> values) {
            addCriterion("truck_id in", values, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdNotIn(List<Integer> values) {
            addCriterion("truck_id not in", values, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdBetween(Integer value1, Integer value2) {
            addCriterion("truck_id between", value1, value2, "truckId");
            return (Criteria) this;
        }

        public Criteria andTruckIdNotBetween(Integer value1, Integer value2) {
            addCriterion("truck_id not between", value1, value2, "truckId");
            return (Criteria) this;
        }

        public Criteria andEnterdateIsNull() {
            addCriterion("enterdate is null");
            return (Criteria) this;
        }

        public Criteria andEnterdateIsNotNull() {
            addCriterion("enterdate is not null");
            return (Criteria) this;
        }

        public Criteria andEnterdateEqualTo(Date value) {
            addCriterion("enterdate =", value, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateNotEqualTo(Date value) {
            addCriterion("enterdate <>", value, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateGreaterThan(Date value) {
            addCriterion("enterdate >", value, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateGreaterThanOrEqualTo(Date value) {
            addCriterion("enterdate >=", value, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateLessThan(Date value) {
            addCriterion("enterdate <", value, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateLessThanOrEqualTo(Date value) {
            addCriterion("enterdate <=", value, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateIn(List<Date> values) {
            addCriterion("enterdate in", values, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateNotIn(List<Date> values) {
            addCriterion("enterdate not in", values, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateBetween(Date value1, Date value2) {
            addCriterion("enterdate between", value1, value2, "enterdate");
            return (Criteria) this;
        }

        public Criteria andEnterdateNotBetween(Date value1, Date value2) {
            addCriterion("enterdate not between", value1, value2, "enterdate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateIsNull() {
            addCriterion("appointeddate is null");
            return (Criteria) this;
        }

        public Criteria andAppointeddateIsNotNull() {
            addCriterion("appointeddate is not null");
            return (Criteria) this;
        }

        public Criteria andAppointeddateEqualTo(Date value) {
            addCriterion("appointeddate =", value, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateNotEqualTo(Date value) {
            addCriterion("appointeddate <>", value, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateGreaterThan(Date value) {
            addCriterion("appointeddate >", value, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateGreaterThanOrEqualTo(Date value) {
            addCriterion("appointeddate >=", value, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateLessThan(Date value) {
            addCriterion("appointeddate <", value, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateLessThanOrEqualTo(Date value) {
            addCriterion("appointeddate <=", value, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateIn(List<Date> values) {
            addCriterion("appointeddate in", values, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateNotIn(List<Date> values) {
            addCriterion("appointeddate not in", values, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateBetween(Date value1, Date value2) {
            addCriterion("appointeddate between", value1, value2, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andAppointeddateNotBetween(Date value1, Date value2) {
            addCriterion("appointeddate not between", value1, value2, "appointeddate");
            return (Criteria) this;
        }

        public Criteria andSettingdateIsNull() {
            addCriterion("settingdate is null");
            return (Criteria) this;
        }

        public Criteria andSettingdateIsNotNull() {
            addCriterion("settingdate is not null");
            return (Criteria) this;
        }

        public Criteria andSettingdateEqualTo(Date value) {
            addCriterion("settingdate =", value, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateNotEqualTo(Date value) {
            addCriterion("settingdate <>", value, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateGreaterThan(Date value) {
            addCriterion("settingdate >", value, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateGreaterThanOrEqualTo(Date value) {
            addCriterion("settingdate >=", value, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateLessThan(Date value) {
            addCriterion("settingdate <", value, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateLessThanOrEqualTo(Date value) {
            addCriterion("settingdate <=", value, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateIn(List<Date> values) {
            addCriterion("settingdate in", values, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateNotIn(List<Date> values) {
            addCriterion("settingdate not in", values, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateBetween(Date value1, Date value2) {
            addCriterion("settingdate between", value1, value2, "settingdate");
            return (Criteria) this;
        }

        public Criteria andSettingdateNotBetween(Date value1, Date value2) {
            addCriterion("settingdate not between", value1, value2, "settingdate");
            return (Criteria) this;
        }

        public Criteria andEntrymileageIsNull() {
            addCriterion("entrymileage is null");
            return (Criteria) this;
        }

        public Criteria andEntrymileageIsNotNull() {
            addCriterion("entrymileage is not null");
            return (Criteria) this;
        }

        public Criteria andEntrymileageEqualTo(Double value) {
            addCriterion("entrymileage =", value, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageNotEqualTo(Double value) {
            addCriterion("entrymileage <>", value, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageGreaterThan(Double value) {
            addCriterion("entrymileage >", value, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageGreaterThanOrEqualTo(Double value) {
            addCriterion("entrymileage >=", value, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageLessThan(Double value) {
            addCriterion("entrymileage <", value, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageLessThanOrEqualTo(Double value) {
            addCriterion("entrymileage <=", value, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageIn(List<Double> values) {
            addCriterion("entrymileage in", values, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageNotIn(List<Double> values) {
            addCriterion("entrymileage not in", values, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageBetween(Double value1, Double value2) {
            addCriterion("entrymileage between", value1, value2, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andEntrymileageNotBetween(Double value1, Double value2) {
            addCriterion("entrymileage not between", value1, value2, "entrymileage");
            return (Criteria) this;
        }

        public Criteria andStatusIdIsNull() {
            addCriterion("status_id is null");
            return (Criteria) this;
        }

        public Criteria andStatusIdIsNotNull() {
            addCriterion("status_id is not null");
            return (Criteria) this;
        }

        public Criteria andStatusIdEqualTo(Integer value) {
            addCriterion("status_id =", value, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdNotEqualTo(Integer value) {
            addCriterion("status_id <>", value, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdGreaterThan(Integer value) {
            addCriterion("status_id >", value, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("status_id >=", value, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdLessThan(Integer value) {
            addCriterion("status_id <", value, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdLessThanOrEqualTo(Integer value) {
            addCriterion("status_id <=", value, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdIn(List<Integer> values) {
            addCriterion("status_id in", values, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdNotIn(List<Integer> values) {
            addCriterion("status_id not in", values, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdBetween(Integer value1, Integer value2) {
            addCriterion("status_id between", value1, value2, "statusId");
            return (Criteria) this;
        }

        public Criteria andStatusIdNotBetween(Integer value1, Integer value2) {
            addCriterion("status_id not between", value1, value2, "statusId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}