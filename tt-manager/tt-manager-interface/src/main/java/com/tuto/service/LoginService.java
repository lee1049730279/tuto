package com.tuto.service;

import com.tuto.common.dto.MessageResult;

/**
 * User: Administrator
 * Date: 2017/11/29
 * Time: 16:30
 * Version:V1.0
 */
public interface LoginService {
    MessageResult userLogin(String phone, String password);
}
