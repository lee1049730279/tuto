package com.tuto.service.impl;

import com.tuto.common.dto.TreeNode;
import com.tuto.dao.TtCityMapper;
import com.tuto.dao.TtGroupMapper;
import com.tuto.pojo.po.TtCity;
import com.tuto.pojo.po.TtCityExample;
import com.tuto.pojo.po.TtGroup;
import com.tuto.pojo.po.TtGroupExample;
import com.tuto.service.CityCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CityCatServiceImpl implements CityCatService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtCityMapper ttCityDao;

    @Override
    public List<TreeNode> listCityCatsByPid(Long parentId) {
        List<TreeNode> treeNodeList = null;
        try {
            //获得group类型景点
            TtCityExample example=new TtCityExample();
            TtCityExample.Criteria criteria=example.createCriteria();
            criteria.andParentIdEqualTo(parentId);
            treeNodeList=new ArrayList<>();
            List<TtCity> cityCatList = ttCityDao.selectByExample(example);
            for (int i=0;i<cityCatList.size();i++){
                TtCity ttCity = cityCatList.get(i);
                TreeNode treeNode=new TreeNode();
                treeNode.setId(new Long(ttCity.getId()));
                treeNode.setText(ttCity.getName());
                treeNode.setState(ttCity.getIsParent() ==0?  "open":"closed");

                treeNodeList.add(treeNode);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }
}
