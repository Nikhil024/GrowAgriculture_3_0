package com.grow.agriculture.cache;

import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

@Component
public class RedisCache {
	
	@Autowired private RedisTemplate< String, Object > template;

	public Object getValue( final String key ) {
	    return template.opsForValue().get( key );
	}

	public void setValue( final String key, final String value ) {
	    template.opsForValue().set( key, value );
	    template.expire(key, 30, TimeUnit.MINUTES);
	}
	
	public void setObject( final String key, final Object value ) {
	    template.opsForValue().set( key, value );
	    template.expire(key, 30, TimeUnit.MINUTES);
	}

}
