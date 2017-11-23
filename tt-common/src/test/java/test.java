import org.junit.Test;

import java.io.IOException;
import java.util.Map;

import static com.tuto.common.util.JingWeiDuUtil.getLngAndLat;

public class test {
    @Test
    public  void test1() {
        Map<String,Double> map = getLngAndLat("宁波方特");
        System.out.println(map.get("lng"));
    }
}
