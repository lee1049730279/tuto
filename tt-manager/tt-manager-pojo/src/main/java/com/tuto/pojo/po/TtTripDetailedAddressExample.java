package com.tuto.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class TtTripDetailedAddressExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TtTripDetailedAddressExample() {
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

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTripIdIsNull() {
            addCriterion("trip_id is null");
            return (Criteria) this;
        }

        public Criteria andTripIdIsNotNull() {
            addCriterion("trip_id is not null");
            return (Criteria) this;
        }

        public Criteria andTripIdEqualTo(Long value) {
            addCriterion("trip_id =", value, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdNotEqualTo(Long value) {
            addCriterion("trip_id <>", value, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdGreaterThan(Long value) {
            addCriterion("trip_id >", value, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdGreaterThanOrEqualTo(Long value) {
            addCriterion("trip_id >=", value, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdLessThan(Long value) {
            addCriterion("trip_id <", value, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdLessThanOrEqualTo(Long value) {
            addCriterion("trip_id <=", value, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdIn(List<Long> values) {
            addCriterion("trip_id in", values, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdNotIn(List<Long> values) {
            addCriterion("trip_id not in", values, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdBetween(Long value1, Long value2) {
            addCriterion("trip_id between", value1, value2, "tripId");
            return (Criteria) this;
        }

        public Criteria andTripIdNotBetween(Long value1, Long value2) {
            addCriterion("trip_id not between", value1, value2, "tripId");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressIsNull() {
            addCriterion("detailed_address is null");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressIsNotNull() {
            addCriterion("detailed_address is not null");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressEqualTo(String value) {
            addCriterion("detailed_address =", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressNotEqualTo(String value) {
            addCriterion("detailed_address <>", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressGreaterThan(String value) {
            addCriterion("detailed_address >", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressGreaterThanOrEqualTo(String value) {
            addCriterion("detailed_address >=", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressLessThan(String value) {
            addCriterion("detailed_address <", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressLessThanOrEqualTo(String value) {
            addCriterion("detailed_address <=", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressLike(String value) {
            addCriterion("detailed_address like", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressNotLike(String value) {
            addCriterion("detailed_address not like", value, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressIn(List<String> values) {
            addCriterion("detailed_address in", values, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressNotIn(List<String> values) {
            addCriterion("detailed_address not in", values, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressBetween(String value1, String value2) {
            addCriterion("detailed_address between", value1, value2, "detailedAddress");
            return (Criteria) this;
        }

        public Criteria andDetailedAddressNotBetween(String value1, String value2) {
            addCriterion("detailed_address not between", value1, value2, "detailedAddress");
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