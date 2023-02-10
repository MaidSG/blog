package com.wy.blog.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.wy.blog.dto.OperationLogDTO;
import com.wy.blog.vo.PageResult;
import com.wy.blog.entity.OperationLog;
import com.wy.blog.vo.ConditionVO;

/**
 * 操作日志服务
 *
 * @author wy
 * @date 2022/07/29
 */
public interface OperationLogService extends IService<OperationLog> {

    /**
     * 查询日志列表
     *
     * @param conditionVO 条件
     * @return 日志列表
     */
    PageResult<OperationLogDTO> listOperationLogs(ConditionVO conditionVO);

}
