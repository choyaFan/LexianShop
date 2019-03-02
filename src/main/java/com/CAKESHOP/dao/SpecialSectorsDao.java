package dao;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.CAKESHOP.POJO.SpecialSectors;

public interface SpecialSectorsDao {

    int insert(@Param("pojo") SpecialSectors pojo);

    int insertList(@Param("pojos") List< SpecialSectors> pojo);

    List<SpecialSectors> select(@Param("pojo") SpecialSectors pojo);

    int update(@Param("pojo") SpecialSectors pojo);

}
