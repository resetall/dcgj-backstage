package com.dcgj.test;

import com.dcgj.web.dao.BrandNewsMapper;
import com.dcgj.web.model.BrandNews;
import com.dcgj.web.model.User;
import com.dcgj.web.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA by Xav.
 * Date: 2016/10/30
 * Time: 下午9:13
 * Desc:
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/applicationContext.xml","classpath:/applicationContext-shiro.xml"})
public class TestDao {

    @Resource
    private UserService userService;

    @Resource
    private BrandNewsMapper brandNewsMapper;

    @Test
    public void testUserDao(){
        User authentication = userService.authentication(new User("starzou", "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"));
        System.out.println(authentication);
    }

    @Test
    public void testNewsDao(){
        StringBuilder condition = new StringBuilder();
        condition.append(" order by id desc ");
        condition.append("limit " + 0 + "," + 10 + " ");


        System.out.println(condition);

        List<BrandNews> list = brandNewsMapper.selectLimitNewsRecords(condition.toString());

        for (BrandNews news: list) {
            System.out.println(news.getNewsTitle());
        }
    }

}
