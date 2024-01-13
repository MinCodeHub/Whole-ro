package model.service;
import java.util.List;

import model.dao.mybatis.SearchFoodMapperRepository;
import model.dao.mybatis.StatisMapperRepository;
import model.dto.FoodDTO;
public class SearchFoodManager {
	
	private static SearchFoodManager searchfoodMan = new SearchFoodManager();
	private SearchFoodMapperRepository searchfoodRepository;
	
	private SearchFoodManager() {
		try {
			searchfoodRepository = new SearchFoodMapperRepository();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static SearchFoodManager getInstance() {
		return searchfoodMan;
	}
	public List<FoodDTO> fintMyRefByFoodTitle(Long userId, String keyword){
		return searchfoodRepository.fintMyRefByFoodTitle(userId, keyword);
	}

}
