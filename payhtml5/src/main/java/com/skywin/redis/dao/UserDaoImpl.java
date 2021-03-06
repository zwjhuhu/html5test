package com.skywin.redis.dao;

import java.io.Serializable;
import java.util.concurrent.locks.Lock;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.JacksonJsonRedisSerializer;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.stereotype.Service;

import com.skywin.model.UserRedisInf;

@Service("userRedisDao")
public class UserDaoImpl implements UserDao {
	private RedisTemplate<Serializable, Serializable> redisTemplate;

	private RedisSerializer<UserRedisInf> valueSerializer = new JacksonJsonRedisSerializer(
			UserRedisInf.class);

	public RedisTemplate<Serializable, Serializable> getRedisTemplate() {
		return redisTemplate;
	}

	@Autowired
	public void setRedisTemplate(
			RedisTemplate<Serializable, Serializable> redisTemplate) {
		this.redisTemplate = redisTemplate;
	}

	@Override
	public void save(final UserRedisInf user) {
		redisTemplate.execute(new RedisCallback<Object>() {
			@Override
			public Object doInRedis(RedisConnection connection)
					throws DataAccessException {
				connection.set(
						redisTemplate.getStringSerializer().serialize(
								UserRedisInf.REDIS_PREFIX + user.getUid()),
								valueSerializer.serialize(user));
				return null;
			}
		});
	}

	@Override
	public UserRedisInf read(final String uid) {
		return redisTemplate.execute(new RedisCallback<UserRedisInf>() {
			@Override
			public UserRedisInf doInRedis(RedisConnection connection)
					throws DataAccessException {
				byte[] key = redisTemplate.getStringSerializer().serialize(
						UserRedisInf.REDIS_PREFIX + uid);
				if (connection.exists(key)) {
					byte[] value = connection.get(key);
					UserRedisInf user = valueSerializer.deserialize(value);

					return user;
				}
				return null;
			}
		});
	}

	@Override
	public void delete(final String uid) {
		redisTemplate.execute(new RedisCallback<Object>() {
			public Object doInRedis(RedisConnection connection) {
				connection.del(redisTemplate.getStringSerializer().serialize(
						UserRedisInf.REDIS_PREFIX + uid));
				return null;
			}
		});
	}

}
