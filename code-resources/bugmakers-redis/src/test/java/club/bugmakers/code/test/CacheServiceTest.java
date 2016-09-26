package club.bugmakers.code.test;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import club.bugmakers.code.cache.redis.CacheManager;
import club.bugmakers.code.cache.redis.CacheService;
import club.bugmakers.code.cache.redis.serializer.JavaObjectSerializer;

/**
 * ***********************************************************************
 * Title:     CacheServiceTest 
 * Project:   bugmakers-redis
 * Orgnization: bugmakers.club
 * Copyright: Copyright (c) 2007
 *
 * Description:
 *  CacheService的测试类
 * @Create    2016年9月23日 下午2:13:09 
 * @author    BruceOuyang
 * @version   1.0
 * ************************************************************************
 */
public class CacheServiceTest {
    CacheManager cacheManager = CacheManager.getInstance();
    CacheService cacheService = cacheManager.getCacheService(CacheManager.CACHE_PROVIDER_REDIS,new JavaObjectSerializer());
    public void test()
    {
        User user = new User();
        user.setUserName("测试");
        user.setPassword("123456");
        user.setHeight(100);
        user.setTime(new Date());
        
        Friend friend1 = new Friend();
		friend1.setFriendName("张三");
		friend1.setBirthDay(new Date());
		user.addFriend(friend1);

        Friend friend2 = new Friend();
        friend2.setFriendName("王二");
        friend2.setBirthDay(new Date());
        user.addFriend(friend2);

        cacheService.setObject("test:test1:user", user);

        User ret = cacheService.getObject("test:test1:user", User.class);
        
        System.out.println(ret);
    }

    public static void main(String args[])
    {
        try
        {
            CacheServiceTest client = new CacheServiceTest();
            client.test();
        }catch (Exception e)
        {
            e.printStackTrace();
        }

    }
}
