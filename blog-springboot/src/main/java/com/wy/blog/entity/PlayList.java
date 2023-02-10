package com.wy.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author WY
 * @date 2023/2/10
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PlayList {
    private Integer id;
    private String name;
    private String coverImgId;
    private String coverImgUrl;
    private String coverImgId_str;
    private Integer adType;
    private Integer userId;
    private Long createTime;
    private Integer status;
    private Boolean opRecommend;
    private Boolean highQuality;
    private Boolean newImported;
    private Long updateTime;
    private Integer trackCount;
    private Integer specialType;
    private Integer privacy;
    private Long trackUpdateTime;
    private String commentThreadId;
    private String playCount;
    private Long trackNumberUpdateTime;
    private Long subscribedCount;
    private Long cloudTrackCount;
    private Boolean ordered;
    private String description;
    private List<String> tags;
    private String updateFrequency;
    private List<Subscriber> subscribers;





}
