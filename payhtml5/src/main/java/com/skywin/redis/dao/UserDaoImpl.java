package com.skywin.redis.dao;

import java.io.Serializable;

import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;

import com.skywin.UserInf;

public class UserDaoImpl implements UserDao {
	private RedisTemplate<Serializable, Serializable> redisTemplate;

	public RedisTemplate<Serializable, Serializable> getRedisTemplate() {
		return redisTemplate;
	}

	public void setRedisTemplate(
			RedisTemplate<Serializable, Serializable> redisTemplate) {
		this.redisTemplate = redisTemplate;
	}

	@Override
	public void save(final UserInf user) {
		redisTemplate.execute(new RedisCallback<Object>() {
			@Override
			public Object doInRedis(RedisConnection connection)
					throws DataAccessException {
				RedisSerializer<Object> rz = new JdkSerializationRedisSerializer();
				connection.set(
						redisTemplate.getStringSerializer().serialize(
								"user.uid." + user.getUuid()),
						rz.serialize(user));
				return null;
			}
		});
	}

	@Override
	public UserInf read(final String uid) {
		return redisTemplate.execute(new RedisCallback<UserInf>() {
			@Override
			public UserInf doInRedis(RedisConnection connection)
					throws DataAccessException {
				byte[] key = redisTemplate.getStringSerializer().serialize(
						"user.uid." + uid);
				if (connection.exists(key)) {
					byte[] value = connection.get(key);
					UserInf user = (UserInf) redisTemplate
							.getDefaultSerializer().deserialize(value);

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
						"user.uid." + uid));
				return null;
			}
		});
	}
}
