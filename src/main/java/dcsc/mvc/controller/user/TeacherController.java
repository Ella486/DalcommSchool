package dcsc.mvc.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dcsc.mvc.config.security.PasswordEncoder;
import dcsc.mvc.domain.user.Teacher;
import dcsc.mvc.service.user.TeacherService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TeacherController {
	
	public final TeacherService teacherService;
	
	public final BCryptPasswordEncoder getBCryptPasswordEncoder;
	
	/**
	 * 강사 회원가입 폼
	 * */
	@RequestMapping("/main/login/joinTeacher")
	public void joinTeacher() {}
	
	/**
	 * 강사 회원가입
	 * */
	@RequestMapping("/main/login/insert")
	public String insert(Teacher teacher) {
		teacherService.insertTeacher(teacher);
		
		return "redirect:/";
	}
	
	/**
	 * 아이디 찾기 폼
	 * */
	@RequestMapping("/main/login/findIdForm")
	public void findIdForm() {}
	
	/**
	 * 비밀번호 찾기 폼
	 * */
	@RequestMapping("/main/login/findPwdForm")
	public void findPwdForm() {}
	
	/**
	 * 회원(강사,학생) 아이디 찾기
	 * */
	@RequestMapping("/main/login/findId")
	public ModelAndView findId(String userName, String userPhone) {
		
		String userId = teacherService.selectId(userName, userPhone);
		
		if(userId==null) return new ModelAndView("main/login/findError");
		
		return new ModelAndView("main/login/findIdOk", "userId", userId); //(가지고 갈 경로, "가서 쓰는 쓸 이름", 가져갈 데이터);
	}
	
	/**
	 * 회원(강사,학생) 비밀번호 찾기
	 * */
	@RequestMapping("/main/login/findPwd")
	public ModelAndView findPwd(String userId, String userName, String userPhone) {
		boolean result = teacherService.selectPwd(userId, userName, userPhone);
		
		if(!result) return new ModelAndView("main/login/findError");
		
		return new ModelAndView("/main/login/findPwdOk","userId",userId);
		
	}
	
	/**
	 * 비밀번호 바꾸기(session X. 비밀번호 찾기 다음 기능)
	 * */
	@RequestMapping("/main/login/findPwdOk")
	public String findPwdOk(String userId, String newUserPwd) {
		System.out.println("teacherController, findPwdOk 호출");
		
		String encodePassword = getBCryptPasswordEncoder.encode(newUserPwd);
		
		teacherService.updateUserPwd(userId, encodePassword);
		
		return "redirect:/";
	}
	
	/**
	 * 비밀번호 수정 폼(session O)
	 * */
	@RequestMapping("/main/mypage/modifyPwd")
	public void updatePwdForm() {}
	
	/**
	 * 비밀번호 수정(session O)
	 * */
	@RequestMapping("/main/login/updatePwd")
	public String updatePwd(String userPwd, String newUserPwd, HttpSession session) {
		System.out.println("teacherController, updatePwd 호출");
		
		String encodePassword = getBCryptPasswordEncoder.encode(newUserPwd);
				
		//서비스 호출
		teacherService.updateUserPwd(userPwd, encodePassword, session);
				
		return "redirect:/";
	}
	
	/**
	 * 아이디 중복 체크
	 * */
	@RequestMapping("/main/login/checkId")
	@ResponseBody
	public boolean checkId(String userId) {
		boolean result = teacherService.userIdCheck(userId);
//		System.out.println(result);
		
		return result;
	}
	
	/**
	 * 핸드폰 번호 중복 체크
	 * */
	@RequestMapping("/main/login/checkPhone")
	@ResponseBody
	public boolean checkPhone(String userPhone) {
		boolean result = teacherService.userPhoneCheck(userPhone);
		
//		System.out.println(result);
		return result;
	}
	
	/**
	 * 선생님 닉네임 중복 체크
	 * */
	@RequestMapping("/main/login/checkNick")
	@ResponseBody
	public boolean checkNick(String teacherNick) {
		boolean result = teacherService.teacherNickCheck(teacherNick);
		
		return result;
	}
	
	
//	@RequestMapping("/mypage")
//	public void teacherMypage(){}
//	
//	@RequestMapping("/updateProfile")
//	public void updateProfile() {}
//	

	
	
}
