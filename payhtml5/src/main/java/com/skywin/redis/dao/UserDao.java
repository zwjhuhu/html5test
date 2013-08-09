package com.skywin.redis.dao;

import com.skywin.UserInf;

public interface UserDao {  
    /** 
     * @param uid 
     * @param address 
     */  
    void save(UserInf user);  
  
    /** 
     * @param uid 
     * @return 
     */  
    UserInf read(String uid);  
  
    /** 
     * @param uid 
     */  
    void delete(String uid);  
}  
