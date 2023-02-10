package com.wy.blog.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wy.blog.dto.MusicDTO;
import com.wy.blog.entity.Message;
import com.wy.blog.service.MusicService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.client.RestTemplate;
import com.alibaba.fastjson.JSON;

import java.util.Collection;
import java.util.Map;
import java.util.function.Function;

/**
 * @author WY
 * @date 2023/2/10
 **/
@Service
@Slf4j
public class MusicServiceImpl implements MusicService {

    @Autowired
    private RestTemplate restTemplate;
    @Override
    public JSONObject listPlaylist(String id) {
                String url = "https://n.xlz122.cn/api/playlist/detail";

        //LinkedMultiValueMap一个键对应多个值，对应format-data的传入类型
        LinkedMultiValueMap<String, String> request = new LinkedMultiValueMap<>();
        //入参
        request.set("id",id);

        //请求
        String result = restTemplate.postForObject(url,request,String.class);
//        System.out.println(result);

        JSONObject jsonObject = JSON.parseObject(result);
        MusicDTO musicDTO = JSON.parseObject(result,MusicDTO.class);
        ResponseEntity<String> responseEntity = restTemplate.postForEntity(url, request, String.class);
//        System.out.println("responseEntity.getBody() = " + responseEntity.getBody());
        return jsonObject;
    }


}
