/*
import com.tuto.common.jedis.JedisClient;
import com.tuto.common.jedis.JedisClientCluster;
import com.tuto.common.util.JsonUtils;
import com.tuto.dao.TtUserMapper;
import com.tuto.pojo.po.TtUser;
import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

*/
/*
 * Created with IDEA
 * Authour : Lech
 * Date : 2017/11/23
 * Time : 22:23
 * Desc : Created by Lech on 2017/11/23 22:23
*//*


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-jedis.xml"})
public class TestRedis {

    @Autowired
    private TtUserMapper ttUserMapper;
    @Autowired
    private JedisClient jedisCluster;
    @Test
    public void test1(){
        List<TtUser> list = null;
        String json = null;
        try{
            //查询缓存，如果存在直接加载
             json = jedisCluster.hget("ttuser",Long.toString(1l));
            if(StringUtils.isNotBlank(json)){
                list = JsonUtils.jsonToList(json,TtUser.class);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        //如果缓存中没有
        TtUser ttUser = ttUserMapper.selectByPrimaryKey(1l);

        try{
            //将查询出的数据存放到缓存中
            jedisCluster.hset("ttuser",Long.toString(1l),JsonUtils.objectToJson(ttUser));
        }catch(Exception e){
            e.printStackTrace();
        }
        System.out.println(json);
    }
}
*/
