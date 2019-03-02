package dao;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.POJO.ProductsByStore;

public interface ProductsByStoreDao {

    int insert(@Param("pojo") ProductsByStore pojo);

    int insertList(@Param("pojos") List< ProductsByStore> pojo);

    List<ProductsByStore> select(@Param("pojo") ProductsByStore pojo);

    int update(@Param("pojo") ProductsByStore pojo);

}
