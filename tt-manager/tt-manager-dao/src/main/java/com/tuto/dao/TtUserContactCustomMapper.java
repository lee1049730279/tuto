package com.tuto.dao;

import com.tuto.pojo.po.TtUserContact;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User: jack
 * Date: 2017/11/17
 * Time: 20:59
 * Version:V1.0
 */
public interface TtUserContactCustomMapper {
    List<TtUserContact> findttUserContact(@Param("oid") Long oid, @Param("uid") Long uid);
}
