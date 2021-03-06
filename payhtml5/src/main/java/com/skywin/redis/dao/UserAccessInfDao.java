package com.skywin.redis.dao;

import java.util.List;

import com.skywin.model.UserRedisAccessInf;


public interface UserAccessInfDao {  
	
    void save(UserRedisAccessInf user);  
  
    UserRedisAccessInf read(String username,int id);  
  
    void delete(String username,int id);

	List<UserRedisAccessInf> readByUser(String username);  
}  
