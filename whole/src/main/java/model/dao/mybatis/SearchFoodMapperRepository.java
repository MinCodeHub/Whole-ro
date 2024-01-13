package model.dao.mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.dao.mybatis.mapper.SearchFoodMapper;
import model.dto.FoodDTO;

public class SearchFoodMapperRepository {
	
private SqlSessionFactory sqlSessionFactory;
	
	public SearchFoodMapperRepository() {
		String resource = "mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			throw new IllegalArgumentException(e);
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	//USERID와 키워드로 냉장고 글 제목에 키워드가 들어간 냉장고 포스트 찾기
	public List<FoodDTO> fintMyRefByFoodTitle(Long userId, String keyword) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.getMapper(SearchFoodMapper.class).fintMyRefByFoodTitle(userId,keyword);
		} finally {
			sqlSession.close();
		}
	}

}
