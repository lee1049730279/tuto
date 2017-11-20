package com.tuto.service;

import com.tuto.common.dto.Order;
import com.tuto.common.dto.Page;
import com.tuto.common.dto.Result;
import com.tuto.pojo.po.TtTripGroupParam;
import com.tuto.pojo.po.TtTripIndependentParam;
import com.tuto.pojo.vo.TtTripParamCustom;

import java.util.List;

public interface TripParamService {
    /**
     * 查询规格
     * @param page  用于分页，里面有page：当前页  rows:一页的记录条数  还有一个getOffset()
     * @param order  用于排序，里面有sort:按什么排序，如title  order:升序还是降序
     * @param ofType  因为数据库里有两张表，用于判断去查哪张表
     * @return
     */
    Result<TtTripParamCustom> listTripParamsByPage(Page page, Order order,int ofType);

    /**
     * 删除规格  是真的删除
     * @param ids  这是批量删除，可以删除多个，ids存了要删除的所有景点的id
     * @param ofTypes  因为数据库里有两张表，用于判断去哪张表
     * @return
     */
    int removeParamBatch(List<Long> ids,List<Long> ofTypes);

    /**
     * 保存规格
     * @param cid  因为不知道id是保存跟团游的id还是自助游的id,所有这里用cid 要把这个cid保存到规格参数表中
     * @param ofType  因为数据库里有两张表，用于判断去哪张表
     * @param paramData  规格数据
     * @return
     */
    int saveParam(Long cid, int ofType, String paramData);

    /**
     * 通过跟团游的id得到跟团游的数据
     * @param id  跟团游的id
     * @return
     */
    TtTripGroupParam getGroupParamById(Long id);

    /**
     * 通过自助游的id得到跟团游的数据
     * @param id  自助游的id
     * @return
     */
    TtTripIndependentParam getIndependentParamById(Long id);

    /**
     *
     * @param id   要编辑的参数规格表的id
     * @param ofType  因为数据库里有两张表，用于判断去哪张表
     * @param paramData  要更新的数据
     * @return
     */
    int editParam(Long id, int ofType, String paramData);
}
