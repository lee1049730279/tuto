package com.tuto.service.impl;

import com.tuto.common.dto.TreeNode;
import com.tuto.dao.TtGroupMapper;
import com.tuto.dao.TtIndependentMapper;
import com.tuto.pojo.po.TtGroup;
import com.tuto.pojo.po.TtGroupExample;
import com.tuto.pojo.po.TtIndependent;
import com.tuto.pojo.po.TtIndependentExample;
import com.tuto.service.TripCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TripCatServiceImpl implements TripCatService{
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TtGroupMapper ttGroupDao;

    @Autowired
    private TtIndependentMapper ttIndependentDao;
    @Override
    public List<TreeNode> listGroupCatsByPid(Integer parentId) {
        List<TreeNode> treeNodeList = null;
        try {
            //获得group类型景点
            TtGroupExample example=new TtGroupExample();
            TtGroupExample.Criteria criteria=example.createCriteria();
            criteria.andParentIdEqualTo(parentId);
            treeNodeList=new ArrayList<>();
            List<TtGroup> groupCatList = ttGroupDao.selectByExample(example);
            for (int i=0;i<groupCatList.size();i++){
                TtGroup ttGroup = groupCatList.get(i);
                TreeNode treeNode=new TreeNode();
                treeNode.setId(new Long(ttGroup.getId()));
                treeNode.setText(ttGroup.getName());
                treeNode.setState(ttGroup.getIsParnet() ==0?  "open":"closed");

                treeNodeList.add(treeNode);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }

    @Override
    public List<TreeNode> listIndependentCatsByPid(Long parentId) {
        List<TreeNode> treeNodeList = null;
        try {
            //获得group类型景点
            TtIndependentExample example=new TtIndependentExample();
            TtIndependentExample.Criteria criteria=example.createCriteria();
            criteria.andParentIdEqualTo(parentId);
            treeNodeList=new ArrayList<>();
            List<TtIndependent> independentCatList = ttIndependentDao.selectByExample(example);
            for (int i=0;i<independentCatList.size();i++){
                TtIndependent ttIndependent = independentCatList.get(i);
                TreeNode treeNode=new TreeNode();
                treeNode.setId(new Long(ttIndependent.getId()));
                treeNode.setText(ttIndependent.getName());
                treeNode.setState(ttIndependent.getIsParent()==0?  "open":"closed");

                treeNodeList.add(treeNode);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  treeNodeList;
    }
}
