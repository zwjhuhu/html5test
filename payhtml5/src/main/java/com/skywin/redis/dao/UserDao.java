package com.skywin.redis.dao;

import com.skywin.model.UserRedisAccessInf;
import com.skywin.model.UserRedisInf;


public interface UserDao {  
    /** 
     * @param uid 
     * @param address 
     */  
    void save(UserRedisInf user);  
  
    /** 
     * @param uid 
     * @return 
     */  
    UserRedisInf read(String uid);  
  
    /** 
     * @param uid 
     */  
    void delete(String uid);  
}  
