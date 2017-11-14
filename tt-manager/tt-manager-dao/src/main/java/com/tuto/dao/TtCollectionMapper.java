package com.tuto.dao;

import com.tuto.pojo.po.TtCollection;
import com.tuto.pojo.po.TtCollectionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TtCollectionMapper {
    int countByExample(TtCollectionExample example);

    int deleteByExample(TtCollectionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TtCollection record);

    int insertSelective(TtCollection record);

    List<TtCollection> selectByExample(TtCollectionExample example);

    TtCollection selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TtCollection record, @Param("example") TtCollectionExample example);

    int updateByExample(@Param("record") TtCollection record, @Param("example") TtCollectionExample example);

    int updateByPrimaryKeySelective(TtCollection record);

    int updateByPrimaryKey(TtCollection record);
}