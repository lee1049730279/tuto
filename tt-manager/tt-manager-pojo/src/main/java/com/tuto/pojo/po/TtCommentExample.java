package com.tuto.pojo.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TtCommentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TtCommentExample() {
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

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Long value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Long value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Long value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Long value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Long value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Long value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Long> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Long> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Long value1, Long value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Long value1, Long value2) {
            addCriterion("user_id not between", value1, value2, "userId");
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

        public Criteria andOrdersIdIsNull() {
            addCriterion("orders_id is null");
            return (Criteria) this;
        }

        public Criteria andOrdersIdIsNotNull() {
            addCriterion("orders_id is not null");
            return (Criteria) this;
        }

        public Criteria andOrdersIdEqualTo(Long value) {
            addCriterion("orders_id =", value, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdNotEqualTo(Long value) {
            addCriterion("orders_id <>", value, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdGreaterThan(Long value) {
            addCriterion("orders_id >", value, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdGreaterThanOrEqualTo(Long value) {
            addCriterion("orders_id >=", value, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdLessThan(Long value) {
            addCriterion("orders_id <", value, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdLessThanOrEqualTo(Long value) {
            addCriterion("orders_id <=", value, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdIn(List<Long> values) {
            addCriterion("orders_id in", values, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdNotIn(List<Long> values) {
            addCriterion("orders_id not in", values, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdBetween(Long value1, Long value2) {
            addCriterion("orders_id between", value1, value2, "ordersId");
            return (Criteria) this;
        }

        public Criteria andOrdersIdNotBetween(Long value1, Long value2) {
            addCriterion("orders_id not between", value1, value2, "ordersId");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateIsNull() {
            addCriterion("place_evaluate is null");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateIsNotNull() {
            addCriterion("place_evaluate is not null");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateEqualTo(Integer value) {
            addCriterion("place_evaluate =", value, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateNotEqualTo(Integer value) {
            addCriterion("place_evaluate <>", value, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateGreaterThan(Integer value) {
            addCriterion("place_evaluate >", value, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateGreaterThanOrEqualTo(Integer value) {
            addCriterion("place_evaluate >=", value, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateLessThan(Integer value) {
            addCriterion("place_evaluate <", value, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateLessThanOrEqualTo(Integer value) {
            addCriterion("place_evaluate <=", value, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateIn(List<Integer> values) {
            addCriterion("place_evaluate in", values, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateNotIn(List<Integer> values) {
            addCriterion("place_evaluate not in", values, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateBetween(Integer value1, Integer value2) {
            addCriterion("place_evaluate between", value1, value2, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andPlaceEvaluateNotBetween(Integer value1, Integer value2) {
            addCriterion("place_evaluate not between", value1, value2, "placeEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateIsNull() {
            addCriterion("hotel_evaluate is null");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateIsNotNull() {
            addCriterion("hotel_evaluate is not null");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateEqualTo(Integer value) {
            addCriterion("hotel_evaluate =", value, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateNotEqualTo(Integer value) {
            addCriterion("hotel_evaluate <>", value, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateGreaterThan(Integer value) {
            addCriterion("hotel_evaluate >", value, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateGreaterThanOrEqualTo(Integer value) {
            addCriterion("hotel_evaluate >=", value, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateLessThan(Integer value) {
            addCriterion("hotel_evaluate <", value, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateLessThanOrEqualTo(Integer value) {
            addCriterion("hotel_evaluate <=", value, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateIn(List<Integer> values) {
            addCriterion("hotel_evaluate in", values, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateNotIn(List<Integer> values) {
            addCriterion("hotel_evaluate not in", values, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateBetween(Integer value1, Integer value2) {
            addCriterion("hotel_evaluate between", value1, value2, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andHotelEvaluateNotBetween(Integer value1, Integer value2) {
            addCriterion("hotel_evaluate not between", value1, value2, "hotelEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateIsNull() {
            addCriterion("service_evaluate is null");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateIsNotNull() {
            addCriterion("service_evaluate is not null");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateEqualTo(Integer value) {
            addCriterion("service_evaluate =", value, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateNotEqualTo(Integer value) {
            addCriterion("service_evaluate <>", value, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateGreaterThan(Integer value) {
            addCriterion("service_evaluate >", value, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateGreaterThanOrEqualTo(Integer value) {
            addCriterion("service_evaluate >=", value, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateLessThan(Integer value) {
            addCriterion("service_evaluate <", value, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateLessThanOrEqualTo(Integer value) {
            addCriterion("service_evaluate <=", value, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateIn(List<Integer> values) {
            addCriterion("service_evaluate in", values, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateNotIn(List<Integer> values) {
            addCriterion("service_evaluate not in", values, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateBetween(Integer value1, Integer value2) {
            addCriterion("service_evaluate between", value1, value2, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andServiceEvaluateNotBetween(Integer value1, Integer value2) {
            addCriterion("service_evaluate not between", value1, value2, "serviceEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateIsNull() {
            addCriterion("traffic_evaluate is null");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateIsNotNull() {
            addCriterion("traffic_evaluate is not null");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateEqualTo(Integer value) {
            addCriterion("traffic_evaluate =", value, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateNotEqualTo(Integer value) {
            addCriterion("traffic_evaluate <>", value, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateGreaterThan(Integer value) {
            addCriterion("traffic_evaluate >", value, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateGreaterThanOrEqualTo(Integer value) {
            addCriterion("traffic_evaluate >=", value, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateLessThan(Integer value) {
            addCriterion("traffic_evaluate <", value, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateLessThanOrEqualTo(Integer value) {
            addCriterion("traffic_evaluate <=", value, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateIn(List<Integer> values) {
            addCriterion("traffic_evaluate in", values, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateNotIn(List<Integer> values) {
            addCriterion("traffic_evaluate not in", values, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateBetween(Integer value1, Integer value2) {
            addCriterion("traffic_evaluate between", value1, value2, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andTrafficEvaluateNotBetween(Integer value1, Integer value2) {
            addCriterion("traffic_evaluate not between", value1, value2, "trafficEvaluate");
            return (Criteria) this;
        }

        public Criteria andContentIsNull() {
            addCriterion("content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("content not between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeIsNull() {
            addCriterion("evaluate_time is null");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeIsNotNull() {
            addCriterion("evaluate_time is not null");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeEqualTo(Date value) {
            addCriterion("evaluate_time =", value, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeNotEqualTo(Date value) {
            addCriterion("evaluate_time <>", value, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeGreaterThan(Date value) {
            addCriterion("evaluate_time >", value, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("evaluate_time >=", value, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeLessThan(Date value) {
            addCriterion("evaluate_time <", value, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeLessThanOrEqualTo(Date value) {
            addCriterion("evaluate_time <=", value, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeIn(List<Date> values) {
            addCriterion("evaluate_time in", values, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeNotIn(List<Date> values) {
            addCriterion("evaluate_time not in", values, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeBetween(Date value1, Date value2) {
            addCriterion("evaluate_time between", value1, value2, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andEvaluateTimeNotBetween(Date value1, Date value2) {
            addCriterion("evaluate_time not between", value1, value2, "evaluateTime");
            return (Criteria) this;
        }

        public Criteria andUsefullIsNull() {
            addCriterion("usefull is null");
            return (Criteria) this;
        }

        public Criteria andUsefullIsNotNull() {
            addCriterion("usefull is not null");
            return (Criteria) this;
        }

        public Criteria andUsefullEqualTo(Long value) {
            addCriterion("usefull =", value, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullNotEqualTo(Long value) {
            addCriterion("usefull <>", value, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullGreaterThan(Long value) {
            addCriterion("usefull >", value, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullGreaterThanOrEqualTo(Long value) {
            addCriterion("usefull >=", value, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullLessThan(Long value) {
            addCriterion("usefull <", value, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullLessThanOrEqualTo(Long value) {
            addCriterion("usefull <=", value, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullIn(List<Long> values) {
            addCriterion("usefull in", values, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullNotIn(List<Long> values) {
            addCriterion("usefull not in", values, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullBetween(Long value1, Long value2) {
            addCriterion("usefull between", value1, value2, "usefull");
            return (Criteria) this;
        }

        public Criteria andUsefullNotBetween(Long value1, Long value2) {
            addCriterion("usefull not between", value1, value2, "usefull");
            return (Criteria) this;
        }

        public Criteria andUselessIsNull() {
            addCriterion("useless is null");
            return (Criteria) this;
        }

        public Criteria andUselessIsNotNull() {
            addCriterion("useless is not null");
            return (Criteria) this;
        }

        public Criteria andUselessEqualTo(Long value) {
            addCriterion("useless =", value, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessNotEqualTo(Long value) {
            addCriterion("useless <>", value, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessGreaterThan(Long value) {
            addCriterion("useless >", value, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessGreaterThanOrEqualTo(Long value) {
            addCriterion("useless >=", value, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessLessThan(Long value) {
            addCriterion("useless <", value, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessLessThanOrEqualTo(Long value) {
            addCriterion("useless <=", value, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessIn(List<Long> values) {
            addCriterion("useless in", values, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessNotIn(List<Long> values) {
            addCriterion("useless not in", values, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessBetween(Long value1, Long value2) {
            addCriterion("useless between", value1, value2, "useless");
            return (Criteria) this;
        }

        public Criteria andUselessNotBetween(Long value1, Long value2) {
            addCriterion("useless not between", value1, value2, "useless");
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