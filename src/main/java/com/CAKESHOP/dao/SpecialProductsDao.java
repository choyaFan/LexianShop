package dao;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.POJO.SpecialProducts;

public interface SpecialProductsDao {

    int insert(@Param("pojo") SpecialProducts pojo);

    int insertList(@Param("pojos") List< SpecialProducts> pojo);

    List<SpecialProducts> select(@Param("pojo") SpecialProducts pojo);

    int update(@Param("pojo") SpecialProducts pojo);

}
