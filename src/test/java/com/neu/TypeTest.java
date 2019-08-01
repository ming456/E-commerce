import com.neu.bean.Orders;
import com.neu.bean.Type;
import com.neu.bean.User;
import com.neu.service.AdminOrderService;
import com.neu.service.AdminTypeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class TypeTest {
    @Autowired
    AdminTypeService adminTypeService;
    @Autowired
    AdminOrderService adminOrderService;

    @Test
    public void test(){
        System.out.println("。。。。");
        List<Type> list=adminTypeService.findAllType();
    }
    @Test
    public void test1(){
        adminTypeService.delete(4);
    }
    @Test
    public void test2(){
        List<Type> list=adminTypeService.findAllType2();
        System.out.println(list);
    }
    @Test
    public void test3(){
        List<Type> list=new ArrayList<Type>();
        Type type=new Type();
        type.setTypename("联想");
        type.setParentid(3);
        type.setDesciption("联想电脑");
        list.add(type);
        Type type1=new Type();
        type1.setTypename("三星");
        type1.setParentid(3);
        type1.setDesciption("三星电脑");
        list.add(type1);
        adminTypeService.add(list);
    }
    @Test
    public void test4(){
        Orders orders=adminOrderService.orderdetailgoods(1);
        System.out.println(orders);
    }
    @Test
    public void test5(){
        User user=adminOrderService.findUser(1);
        System.out.println(user);
    }
    @Test
    public void test6(){
        User user=new User();
        user.setUsername("张三");
//        user.getAddress().setPhone("136448313");
        System.out.println(user);
    }
}
