package dao;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.POJO.ShoppingCart;

public interface ShoppingCartDao {

    int insert(@Param("pojo") ShoppingCart pojo);

    int insertList(@Param("pojos") List< ShoppingCart> pojo);

    List<ShoppingCart> select(@Param("pojo") ShoppingCart pojo);

    int update(@Param("pojo") ShoppingCart pojo);

}
