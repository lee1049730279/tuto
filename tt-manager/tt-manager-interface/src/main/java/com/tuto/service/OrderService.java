package com.tuto.service;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.po.TtUserContact;
import com.tuto.pojo.vo.TtOrderQuery;
import com.tuto.pojo.vo.TtOrdersCustom;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/16
 * Time: 21:40
 * Version:V1.0
 */
public interface OrderService {


    Result<TtOrdersCustom> listOrders(Page page, Order order, TtOrderQuery ttOrderQuery);

    int updateOrderSstate(List<Long> ids, Integer state);

    List<TtUserContact> checkUserContact(List<Long> ids);

    List<TtOrdersCustom> listOrdersById(Long uid);

    TtOrdersCustom ordersById(Long id);

    int updateByid(Long id);
}
