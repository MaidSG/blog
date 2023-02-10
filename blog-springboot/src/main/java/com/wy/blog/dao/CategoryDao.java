package com.wy.blog.dao;

import com.wy.blog.dto.CategoryBackDTO;
import com.wy.blog.dto.CategoryDTO;
import com.wy.blog.entity.Category;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wy.blog.vo.ConditionVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * 分类
 *
 * @author wy
 * @date 2022/08/10
 */
@Repository
public interface CategoryDao extends BaseMapper<Category> {

    /**
     * 查询分类和对应文章数量
     *
     * @return 分类列表
     */
    List<CategoryDTO> listCategoryDTO();

    /**
     * 查询后台分类列表
     *
     * @param current   页码
     * @param size      大小
     * @param condition 条件
     * @return {@link List<CategoryBackDTO>} 分类列表
     */
    List<CategoryBackDTO> listCategoryBackDTO(@Param("current") Long current, @Param("size") Long size, @Param("condition") ConditionVO condition);

}
