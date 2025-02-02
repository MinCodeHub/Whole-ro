package controller.food;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.user.UserSessionUtils;
import model.dto.FoodDTO;
import model.service.FoodManager;
import model.service.FoodstaticsManager;
import model.service.StatisticsManager;
import model.service.SearchFoodManager;
import model.service.UserManager;
import util.FoodTypeUtil;

public class SearchFoodTitleController implements Controller {
    //음식 검색 컨트롤러

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");

		long userId = Long.parseLong(UserSessionUtils.getLoginUserId(session));

		UserManager userMan = UserManager.getInstance();
		FoodManager foodMan = FoodManager.getInstance();
		StatisticsManager statisticsMan = StatisticsManager.getInstance();

		List<FoodDTO> foodList = foodMan.findFoodListByUserId(userId);
		List<FoodDTO> redList = statisticsMan.selectRedByUserId(userId);
		List<FoodDTO> blueList = statisticsMan.selectBlueByUserId(userId);
		String nickname = userMan.findUserNickNameById(userId);
		String mostFood = statisticsMan.findMostFoodType(userId);
		int redCnt = statisticsMan.countRedByUserId(userId);
		int blueCnt = statisticsMan.countBlueByUserId(userId);
		String light = "";
		if (redCnt > blueCnt) {
			light = "빨간색";
		} else if (redCnt == blueCnt) {
			light = "노란색";
		} else {
			light = "파란색";
		}

		System.out.println("foodlist : " + foodList);
		System.out.println("redList : " + redList);
		// commList 객체를 request에 저장하여 커뮤니티 리스트 화면으로 이동(forwarding)
		request.setAttribute("foodList", foodList);
		request.setAttribute("redList", redList);
		request.setAttribute("blueList", blueList);
		request.setAttribute("userId", userId);
		request.setAttribute("nickname", nickname);
		request.setAttribute("mostFood", mostFood);
		request.setAttribute("light", light);

		FoodstaticsManager fstaticsman = FoodstaticsManager.getInstance();
		FoodTypeUtil foodscolortype = new FoodTypeUtil();
		List<String> myGreenFood = fstaticsman.viewstaticlist(userId);
		List<String> recommendgreenFood = new ArrayList<>();
		//util의 blue타입의 음식 배열 값들 중 유저가 먹은 파란 유형의 음식을 제외하고 recommendgreenFood에 추가한다.
		for (String food : foodscolortype.greenFood) {

			if (!myGreenFood.contains(food)) {
				recommendgreenFood.add(food);
			}
		}
		System.out.println("myGreenFood : " + recommendgreenFood);
		request.setAttribute("recommendgreenFood", recommendgreenFood);

		//util의 red타입의 음식 배열 값들 중 유저가 먹은 빨간색 유형의 음식을 제외하고 notrecommendredFood에 추가한다.
		List<String> myRedFood = fstaticsman.viewstaticRedlist(userId);
		List<String> notrecommendredFood = new ArrayList<>();
		for (String food : foodscolortype.redFood) {

			if (!myRedFood.contains(food)) {
				notrecommendredFood.add(food);
			}
		}
		System.out.println("notrecommendredFood : " + notrecommendredFood);
		request.setAttribute("notrecommendredFood", notrecommendredFood);
		
		
		SearchFoodManager searchfoodman = SearchFoodManager.getInstance();
		String keyword = request.getParameter("food");
		System.out.println("keyword : " + keyword);
		System.out.println("userId : " + userId);
		List<FoodDTO> searchfoods = searchfoodman.fintMyRefByFoodTitle(userId, keyword);
		request.setAttribute("foodList", searchfoods);
		

		return "/myRefg/myRefgList.jsp";     
    }
}
