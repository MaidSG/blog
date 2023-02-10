package com.wy.blog.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wy.blog.entity.ChatRecord;
import org.springframework.stereotype.Repository;

/**
 * 聊天记录
 *
 * @author wy
 * @date 2022/08/10
 */
@Repository
public interface ChatRecordDao extends BaseMapper<ChatRecord> {
}
