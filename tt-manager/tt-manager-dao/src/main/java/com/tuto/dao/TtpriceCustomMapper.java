package com.tuto.dao;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.pojo.vo.TtPriceCustom;
import com.tuto.pojo.vo.TtPriceQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/17
 * Time: 19:28
 * Version:V1.0
 */
public interface TtpriceCustomMapper {
    int count(@Param("ttPriceQuery") TtPriceQuery ttPriceQuery);

    List<TtPriceCustom> listPrice(@Param("page") Page page,@Param("order") Order order, @Param("ttPriceQuery")TtPriceQuery ttPriceQuery);
}
