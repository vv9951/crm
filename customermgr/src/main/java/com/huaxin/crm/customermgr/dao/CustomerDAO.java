package com.huaxin.crm.customermgr.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.huaxin.crm.customermgr.entity.Customer;
import org.apache.ibatis.annotations.CacheNamespace;
import org.mybatis.caches.ehcache.EhcacheCache;

@CacheNamespace(implementation = EhcacheCache.class)
public interface CustomerDAO extends BaseMapper<Customer> {

}
