package com.wy.blog.exception;


import com.wy.blog.enums.StatusCodeEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;

import static com.wy.blog.enums.StatusCodeEnum.FAIL;


/**
 * 业务异常
 *
 * @author wy
 * @date 2022/07/27
 */
@Getter
@AllArgsConstructor
public class BizException extends RuntimeException {

    /**
     * 错误码
     */
    private Integer code = FAIL.getCode();

    /**
     * 错误信息
     */
    private final String message;

    public BizException(String message) {
        this.message = message;
    }

    public BizException(StatusCodeEnum statusCodeEnum) {
        this.code = statusCodeEnum.getCode();
        this.message = statusCodeEnum.getDesc();
    }


}
