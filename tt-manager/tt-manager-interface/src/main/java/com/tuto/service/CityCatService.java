package com.tuto.service;

import com.tuto.common.dto.TreeNode;

import java.util.List;

public interface CityCatService {
    List<TreeNode> listCityCatsByPid(Long parentId);
}
