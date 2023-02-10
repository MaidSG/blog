package com.wy.blog.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wy.blog.entity.OperationLog;
import org.springframework.stereotype.Repository;


/**
 * 操作日志
 *
 * @author wy
 * @date 2022/08/10
 */
@Repository
public interface OperationLogDao extends BaseMapper<OperationLog> {
}
