package com.tuto.service;

import com.tuto.pojo.vo.TtPictureCustom;

import java.util.List;

public interface TtPictureCustomService {
    //查找跟团游旅游
    List<TtPictureCustom> getPictureByGroupId(Integer groupId);
    //查找自助游旅游
    List<TtPictureCustom> getPictureByIndependentId(Integer independentId);
    //查找主题游旅游
    List<TtPictureCustom> getPictureByThemeId();
}
