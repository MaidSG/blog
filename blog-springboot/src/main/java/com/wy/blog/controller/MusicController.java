package com.wy.blog.controller;

import com.wy.blog.service.MusicService;
import com.wy.blog.vo.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

/**
 *
 * 音乐播放器模块
 *
 */
@Api(tags = "音乐播放器模块")
@RestController
public class MusicController {

  @Autowired
  private MusicService musicService;

/**
 * 获取歌曲列表
 */
@PostMapping("/song/playList")
@ApiOperation("获取对应id歌曲列表")
public Result<?> getPlayListByID(@Valid String id){
    System.out.println(id);
 return Result.ok(musicService.listPlaylist(id));
}




}
