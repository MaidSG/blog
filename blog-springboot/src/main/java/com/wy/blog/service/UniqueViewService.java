package com.wy.blog.service;

import com.wy.blog.dto.UniqueViewDTO;
import com.wy.blog.entity.UniqueView;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 用户量统计
 *
 * @author xiaojie
 * @date 2022/07/29
 */
public interface UniqueViewService extends IService<UniqueView> {

    /**
     * 获取7天用户量统计
     *
     * @return 用户量
     */
    List<UniqueViewDTO> listUniqueViews();

}
