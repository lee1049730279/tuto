package com.tuto.dao;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.pojo.vo.TtOrderQuery;
import com.tuto.pojo.vo.TtOrdersCustom;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/16
 * Time: 21:47
 * Version:V1.0
 */
public interface TtOrdersCustomMapper {
    int countitem(@Param("ttOrderQuery") TtOrderQuery ttOrderQuery);

    List<TtOrdersCustom> listOrders(@Param("page") Page page, @Param("order") Order order,@Param("ttOrderQuery") TtOrderQuery ttOrderQuery);

    List<TtOrdersCustom> listOrdersByIdAndState(@Param("uid")Long uid);

    TtOrdersCustom findById(@Param("id")Long id);
}
