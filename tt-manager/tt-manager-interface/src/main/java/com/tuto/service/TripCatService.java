package com.tuto.service;

import com.tuto.common.dto.TreeNode;

import java.util.List;

public interface TripCatService {

    //显示跟团游下拉列表
    List<TreeNode> listGroupCatsByPid(Integer parentId);

    //显示自助游下拉列表
    List<TreeNode> listIndependentCatsByPid(Long parentId);
}
