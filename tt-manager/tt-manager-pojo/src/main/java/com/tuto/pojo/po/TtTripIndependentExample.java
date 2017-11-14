package com.tuto.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class TtTripIndependentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TtTripIndependentExample() {
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

        public Criteria andIndependentIdIsNull() {
            addCriterion("independent_id is null");
            return (Criteria) this;
        }

        public Criteria andIndependentIdIsNotNull() {
            addCriterion("independent_id is not null");
            return (Criteria) this;
        }

        public Criteria andIndependentIdEqualTo(Integer value) {
            addCriterion("independent_id =", value, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdNotEqualTo(Integer value) {
            addCriterion("independent_id <>", value, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdGreaterThan(Integer value) {
            addCriterion("independent_id >", value, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("independent_id >=", value, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdLessThan(Integer value) {
            addCriterion("independent_id <", value, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdLessThanOrEqualTo(Integer value) {
            addCriterion("independent_id <=", value, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdIn(List<Integer> values) {
            addCriterion("independent_id in", values, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdNotIn(List<Integer> values) {
            addCriterion("independent_id not in", values, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdBetween(Integer value1, Integer value2) {
            addCriterion("independent_id between", value1, value2, "independentId");
            return (Criteria) this;
        }

        public Criteria andIndependentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("independent_id not between", value1, value2, "independentId");
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