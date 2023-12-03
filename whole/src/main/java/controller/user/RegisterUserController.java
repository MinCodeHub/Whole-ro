package controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.Community;
import model.User;
import model.entity.UserEntity;
import model.enums.GenderEnum;
import model.service.ExistingUserException;
import model.service.UserManager;

public class RegisterUserController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(RegisterUserController.class);

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
       	if (request.getMethod().equals("GET")) {	
    		// GET request: 회원정보 등록 form 요청	
    		log.debug("RegisterForm Request");

//    		List<Community> commList = UserManager.getInstance().findCommunityList();	// 커뮤니티 리스트 검색
//			request.setAttribute("commList", commList);	
		
			return "/sign_up_2.jsp";   // 검색한 커뮤니티 리스트를 registerForm으로 전송     	
	    }	

       	UserEntity user = new UserEntity(
                request.getParameter("email"),
                request.getParameter("password"),
                request.getParameter("nickname"),
                GenderEnum.valueOf(request.getParameter("gender")),
                request.getParameter("introduction"),
                request.getParameter("interest"),
                request.getParameter("addresss"),
                Integer.parseInt(request.getParameter("reportCount"))
            );
		
       	
        log.debug("Create User : {}", user);

		try {
			UserManager manager = UserManager.getInstance();
			manager.create(user);
			
	        return "redirect:/user/login";	// 성공 시 사용자 리스트 화면으로 redirect
	        
		} catch (ExistingUserException e) {	// 예외 발생 시 회원가입 form으로 forwarding
            request.setAttribute("registerFailed", true);
			request.setAttribute("exception", e);
			request.setAttribute("user", user);
			return "/user/sign_up_2.jsp";
		}
    }
}

