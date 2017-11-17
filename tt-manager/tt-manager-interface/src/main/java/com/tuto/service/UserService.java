package com.tuto.service;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.vo.TtUserCustom;
import com.tuto.pojo.vo.TtUserQuery;

import java.util.List;

/**
 * User: Administrator
 * Date: 2017/11/16
 * Time: 22:16
 * Version:V1.0
 */
public interface UserService {
    Result<TtUserCustom> listTbUserByPage(Page page, Order order, TtUserQuery ttUserQuery);

    int activateById(List<Long> ids);

    int shieldingById(List<Long> ids);
}
