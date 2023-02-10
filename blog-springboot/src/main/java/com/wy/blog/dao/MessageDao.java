package com.wy.blog.dao;

import com.wy.blog.entity.Message;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;


/**
 * 留言
 *
 * @author wy
 * @date 2022/08/10
 */
@Repository
public interface MessageDao extends BaseMapper<Message> {

}
