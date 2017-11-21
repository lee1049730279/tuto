package com.tuto.service;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.common.dto.TreeNode;
import com.tuto.pojo.po.TtPrice;
import com.tuto.pojo.vo.TtPriceCustom;
import com.tuto.pojo.vo.TtPriceQuery;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/17
 * Time: 19:17
 * Version:V1.0
 */
public interface MyTripService {


    Result<TtPriceCustom> listPrice(Page page, Order order, TtPriceQuery ttPriceQuery);

    int changePrice(List<Integer> ids,Float price);

    List<TreeNode> tripPriceId();

    int priceAdd(TtPrice ttPrice);
}
