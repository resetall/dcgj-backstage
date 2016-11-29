package com.dcgj.test;

import com.dcgj.web.model.BrandNews;
import com.dcgj.web.service.BrandNewsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA by Xav.
 * Date: 2016/10/30
 * Time: 下午10:50
 * Desc:
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/applicationContext.xml","classpath:/applicationContext-shiro.xml"})
public class TestService {

    @Resource
    private BrandNewsService brandNewsService;

    @Test
    public void testNewsService(){

        List<BrandNews> list = brandNewsService.getLimitNewsRecords(null,"asc",0,10);
        for (BrandNews news : list) {
            System.out.println(news.getNewsTitle());
        }
    }

}
