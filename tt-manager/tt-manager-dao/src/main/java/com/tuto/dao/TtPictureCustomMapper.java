package com.tuto.dao;

import com.tuto.pojo.vo.TtPictureCustom;

import java.util.List;

public interface TtPictureCustomMapper {
    List<TtPictureCustom> getPictureByGroupId(Integer groupId);
    List<TtPictureCustom> getPictureByIndependentId(Integer independentId);
    List<TtPictureCustom> getPictureByThemeId();
}
