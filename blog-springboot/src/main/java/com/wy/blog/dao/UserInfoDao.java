package com.wy.blog.dao;

import com.wy.blog.entity.UserInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;


/**
 * 用户信息
 *
 * @author wy
 * @date 2022/08/10
 */
@Repository
public interface UserInfoDao extends BaseMapper<UserInfo> {

}
