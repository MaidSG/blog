package com.wy.blog.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wy.blog.entity.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * 菜单
 *
 * @author wy
 * @date 2022/08/10
 */
@Repository
public interface MenuDao extends BaseMapper<Menu> {

    /**
     * 根据用户id查询菜单
     * @param userInfoId 用户信息id
     * @return 菜单列表
     */
    List<Menu> listMenusByUserInfoId(Integer userInfoId);

}
