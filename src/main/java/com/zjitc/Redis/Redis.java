package com.zjitc.Redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

@Component
public class Redis implements RedisCommand {

  @Autowired
  private JedisPool pool;

  @Autowired
  public Redis(JedisPool pool) {
    this.pool = pool;
  }

  /**
   * 缓存（key,value）
   * @param key
   * @param value
   */
  @Override
  public void set(String key, String value) {
    Jedis jedis = null;
    try {
      jedis = pool.getResource();
      jedis.set(key, value);
    } finally {
      if (jedis != null) {
        jedis.close();
      }
    }
  }
}
