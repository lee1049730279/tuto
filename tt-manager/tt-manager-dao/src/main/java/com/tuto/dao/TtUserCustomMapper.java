package com.tuto.dao;

import com.tuto.pojo.vo.TtUserCustom;
import com.tuto.pojo.vo.TtUserQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TtUserCustomMapper{

    int countTtUser(@Param("ttUserQuery") TtUserQuery ttUserQuery) throws Exception;

    List<TtUserCustom> listTtUserByPage(Map<String,Object> map)throws Exception;

}