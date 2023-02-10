package com.wy.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author WY
 * @date 2023/2/10
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Privilege {
    private Long id;
    private Long fee;
    private Long payed;
    private Long realPayed;
    private Long st;
    private Long pl;
    private Long dl;
    private Long sp;
    private Long cp;
    private Long subp;
    private Boolean cs;
    private Long maxbr;
    private Long fl;
    private String pc;
    private Boolean toast;
    private Long flag;
    private Boolean paidBigBang;
    private Boolean preSell;
    private Long playMaxbr;
    private Long downloadMaxbr;
    private String maxBrLevel;
    private String playMaxBrLevel;
    private String downloadMaxBrLevel;
    private String plLevel;
    private String dlLevel;
    private String flLevel;
    private String rscl;
    private String freeTrialPrivilege;

}
