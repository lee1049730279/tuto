package com.tuto.service;

import com.tuto.pojo.po.TtTheme;
import java.util.List;

public interface ThemeCatService {

    //实现主题游多选的下拉列表
    List<TtTheme> listThemeCats();
}
