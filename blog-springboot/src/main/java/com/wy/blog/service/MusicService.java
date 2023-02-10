package com.wy.blog.service;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.extension.service.IService;
import com.wy.blog.dto.MusicDTO;
import com.wy.blog.entity.Message;

public interface MusicService  {

    /**
     * 发起查找歌单请求
     */
    JSONObject listPlaylist(String id);
}
