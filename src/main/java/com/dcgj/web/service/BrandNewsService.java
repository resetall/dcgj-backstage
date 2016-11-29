package com.dcgj.web.service;

import com.dcgj.web.model.BrandNews;

import java.util.List;

/**
 * Created with IntelliJ IDEA by Xav.
 * Date: 2016/10/28
 * Time: 下午10:19
 * Desc:
 */
public interface BrandNewsService {

    /**
     * Add brand news into DB
     * @param news
     */
    int commitNews(BrandNews news);

    /**
     * update news record
     * @param news
     */
    int updateNews(BrandNews news);

    /**
     * get news records List
     */
    List<BrandNews> getLimitNewsRecords(String sort, String order, Integer offset, Integer limit);

    /**
     * delete news record by id
     * @param id
     */
    int deleteNewsById(Integer id);

    /**
     * get the count of record
     * @return
     */
    int getAllRecordsCount();
}
