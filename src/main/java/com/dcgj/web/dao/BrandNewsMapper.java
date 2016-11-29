package com.dcgj.web.dao;

import com.dcgj.web.model.BrandNews;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BrandNewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BrandNews record);

    int insertSelective(BrandNews record);

    BrandNews selectByPrimaryKey(Integer id);

    List<BrandNews> selectLimitNewsRecords(@Param("condition") String condition);

    int selectAllRecordsCount();

    int updateByPrimaryKeySelective(BrandNews record);

    int updateByPrimaryKeyWithBLOBs(BrandNews record);

    int updateByPrimaryKey(BrandNews record);
}