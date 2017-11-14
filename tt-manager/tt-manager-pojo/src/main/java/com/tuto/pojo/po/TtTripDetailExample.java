package com.tuto.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class TtTripDetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TtTripDetailExample() {
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

        public Criteria andPlaceIntroduceIsNull() {
            addCriterion("place_introduce is null");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceIsNotNull() {
            addCriterion("place_introduce is not null");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceEqualTo(String value) {
            addCriterion("place_introduce =", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceNotEqualTo(String value) {
            addCriterion("place_introduce <>", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceGreaterThan(String value) {
            addCriterion("place_introduce >", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceGreaterThanOrEqualTo(String value) {
            addCriterion("place_introduce >=", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceLessThan(String value) {
            addCriterion("place_introduce <", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceLessThanOrEqualTo(String value) {
            addCriterion("place_introduce <=", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceLike(String value) {
            addCriterion("place_introduce like", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceNotLike(String value) {
            addCriterion("place_introduce not like", value, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceIn(List<String> values) {
            addCriterion("place_introduce in", values, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceNotIn(List<String> values) {
            addCriterion("place_introduce not in", values, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceBetween(String value1, String value2) {
            addCriterion("place_introduce between", value1, value2, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andPlaceIntroduceNotBetween(String value1, String value2) {
            addCriterion("place_introduce not between", value1, value2, "placeIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceIsNull() {
            addCriterion("hotel_introduce is null");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceIsNotNull() {
            addCriterion("hotel_introduce is not null");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceEqualTo(String value) {
            addCriterion("hotel_introduce =", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceNotEqualTo(String value) {
            addCriterion("hotel_introduce <>", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceGreaterThan(String value) {
            addCriterion("hotel_introduce >", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceGreaterThanOrEqualTo(String value) {
            addCriterion("hotel_introduce >=", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceLessThan(String value) {
            addCriterion("hotel_introduce <", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceLessThanOrEqualTo(String value) {
            addCriterion("hotel_introduce <=", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceLike(String value) {
            addCriterion("hotel_introduce like", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceNotLike(String value) {
            addCriterion("hotel_introduce not like", value, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceIn(List<String> values) {
            addCriterion("hotel_introduce in", values, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceNotIn(List<String> values) {
            addCriterion("hotel_introduce not in", values, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceBetween(String value1, String value2) {
            addCriterion("hotel_introduce between", value1, value2, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andHotelIntroduceNotBetween(String value1, String value2) {
            addCriterion("hotel_introduce not between", value1, value2, "hotelIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceIsNull() {
            addCriterion("food_introduce is null");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceIsNotNull() {
            addCriterion("food_introduce is not null");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceEqualTo(String value) {
            addCriterion("food_introduce =", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceNotEqualTo(String value) {
            addCriterion("food_introduce <>", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceGreaterThan(String value) {
            addCriterion("food_introduce >", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceGreaterThanOrEqualTo(String value) {
            addCriterion("food_introduce >=", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceLessThan(String value) {
            addCriterion("food_introduce <", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceLessThanOrEqualTo(String value) {
            addCriterion("food_introduce <=", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceLike(String value) {
            addCriterion("food_introduce like", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceNotLike(String value) {
            addCriterion("food_introduce not like", value, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceIn(List<String> values) {
            addCriterion("food_introduce in", values, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceNotIn(List<String> values) {
            addCriterion("food_introduce not in", values, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceBetween(String value1, String value2) {
            addCriterion("food_introduce between", value1, value2, "foodIntroduce");
            return (Criteria) this;
        }

        public Criteria andFoodIntroduceNotBetween(String value1, String value2) {
            addCriterion("food_introduce not between", value1, value2, "foodIntroduce");
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