package com.skywin.redis.dao;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.JacksonJsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.stereotype.Service;

import com.skywin.model.UserRedisAccessInf;

@Service("userAccessRedisDao")
public class UserAccessInfDaoImpl implements UserAccessInfDao {

	private RedisTemplate<Serializable, Serializable> redisTemplate;

	private RedisSerializer<UserRedisAccessInf> valueSerializer = new JacksonJsonRedisSerializer(
			UserRedisAccessInf.class);

	public RedisTemplate<Serializable, Serializable> getRedisTemplate() {
		return redisTemplate;
	}

	@Autowired
	public void setRedisTemplate(
			RedisTemplate<Serializable, Serializable> redisTemplate) {
		this.redisTemplate = redisTemplate;
	}

	@Override
	public void save(final UserRedisAccessInf user) {
		redisTemplate.execute(new RedisCallback<Object>() {
			@Override
			public Object doInRedis(RedisConnection connection)
					throws DataAccessException {
				connection.set(
						redisTemplate.getStringSerializer().serialize(
								UserRedisAccessInf.REDIS_PREFIX
										+ user.getUsername() + "."
										+ user.getId()),
						valueSerializer.serialize(user));
				return null;
			}
		});
	}

	@Override
	public UserRedisAccessInf read(final String username, final int id) {
		return redisTemplate.execute(new RedisCallback<UserRedisAccessInf>() {
			@Override
			public UserRedisAccessInf doInRedis(RedisConnection connection)
					throws DataAccessException {
				byte[] key = redisTemplate.getStringSerializer().serialize(
						UserRedisAccessInf.REDIS_PREFIX + username + "." + id);
				if (connection.exists(key)) {
					byte[] value = connection.get(key);
					UserRedisAccessInf user = valueSerializer
							.deserialize(value);

					return user;
				}
				return null;
			}
		});
	}

	@Override
	public void delete(final String username, final int id) {
		redisTemplate.execute(new RedisCallback<Object>() {
			public Object doInRedis(RedisConnection connection) {
				connection.del(redisTemplate.getStringSerializer().serialize(
						UserRedisAccessInf.REDIS_PREFIX + username + "." + id));
				return null;
			}
		});
	}
}
