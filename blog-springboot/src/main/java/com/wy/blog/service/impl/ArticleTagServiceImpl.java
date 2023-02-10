package com.wy.blog.service.impl;

import com.wy.blog.entity.ArticleTag;
import com.wy.blog.dao.ArticleTagDao;
import com.wy.blog.service.ArticleTagService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * 文章标签服务
 *
 * @author wy
 * @date 2022/08/10
 */
@Service
public class ArticleTagServiceImpl extends ServiceImpl<ArticleTagDao, ArticleTag> implements ArticleTagService {

}
