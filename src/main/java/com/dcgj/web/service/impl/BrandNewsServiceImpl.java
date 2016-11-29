package com.dcgj.web.service.impl;

import com.dcgj.web.dao.BrandNewsMapper;
import com.dcgj.web.model.BrandNews;
import com.dcgj.web.service.BrandNewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA by Xav.
 * Date: 2016/10/28
 * Time: 下午10:20
 * Desc:
 */
@Service("addNewsService")
public class BrandNewsServiceImpl implements BrandNewsService {

    @Resource
    private BrandNewsMapper brandNewsMapper;

    @Override
    public int commitNews(BrandNews news) {
        return brandNewsMapper.insertSelective(news);
    }

    @Override
    public int updateNews(BrandNews news) {
        return brandNewsMapper.updateByPrimaryKeySelective(news);
    }

    @Override
    public List<BrandNews> getLimitNewsRecords(String sort,String order,Integer offset,Integer limit) {
        StringBuilder condition = new StringBuilder(" order by");
        if (sort != null){
            condition.append(" " + sort);
        }else {
            condition.append(" id");
        }
        if (order != null){
            condition.append(" " + order);
        }

        condition.append(" limit " + offset + "," + limit);

        return brandNewsMapper.selectLimitNewsRecords(condition.toString());

    }

    @Override
    public int deleteNewsById(Integer id) {
        return brandNewsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int getAllRecordsCount() {
        return brandNewsMapper.selectAllRecordsCount();
    }
}
