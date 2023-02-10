package com.wy.blog.dto;

import com.wy.blog.entity.PlayList;
import com.wy.blog.entity.Privilege;
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
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MusicDTO {
    private Integer code;
    private String relatedVideos;
    private PlayList playList;
    private String urls;
    private String sharedPrivilege;
    private String resEntrance;
    private String fromUsers;
    private Long fromUserCount;
    private String songFromUsers;
    private List<Privilege> privileges;
}
