package model.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import model.dto.FoodDTO;

public interface SearchFoodMapper {
	
	//검색키워드가 들어간 냉장고 포스트를 검
	@Select({"SELECT title FROM FOOD JOIN POST USING (post_id) WHERE writer_id = #{userId}  AND title LIKE '%' || #{keyword} || '%'"})
	List<FoodDTO> fintMyRefByFoodTitle(@Param("userId") Long userId, @Param("keyword") String keyword);

}
