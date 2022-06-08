package dcsc.mvc.controller.board;

import java.io.File;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dcsc.mvc.domain.board.ClassReview;
import dcsc.mvc.domain.classes.Classes;
import dcsc.mvc.service.board.ClassReviewService;
import dcsc.mvc.util.Link;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/main/board/review")
public class ClassReviewController {
	
	public final ClassReviewService reviewService;
	
	private final static int PAGE_COUNT=5;
	private final static int BLOCK_COUNT=3;
	
	/**
	 * 클래스 ID로 후기 리스트 가져오기
	 * */
	@RequestMapping("/reviewList/{classId}")
	public String selectByClassId(Model model, @PathVariable Long classId, @RequestParam(defaultValue="1") int nowPage){
//		List<ClassReview> list = reviewService.selectByClassId(classId);
		
		//페이징 처리하기
		Pageable page = PageRequest.of((nowPage-1),PAGE_COUNT, Direction.DESC,"reviewId");
		Page<ClassReview> pageList = reviewService.selectByClassId(classId, page);
//		
		model.addAttribute("classReviews", pageList);
		
		int temp=(nowPage-1)%BLOCK_COUNT;
		int startPage = nowPage-temp;
//		
		model.addAttribute("blockCount",BLOCK_COUNT);
		model.addAttribute("startPage", startPage);
		model.addAttribute("nowPage",nowPage);
		
		System.out.println(BLOCK_COUNT);
		System.out.println(startPage);
		System.out.println(nowPage);
		
		return "main/class/pagingTest";
	}
	
	/**
	 * 강사 ID로 후기 리스트 가져오기
	 * */
	@RequestMapping("/{teacherId}")
	public List<ClassReview> selectByTeacherId(String teacherId){
		List<ClassReview> list = reviewService.selectByTeacherId(teacherId);
		
		return list;
	}
	
	/**
	 * 전체 후기 가져오기(관리자)
	 * */
	@RequestMapping("/list")
	public List<ClassReview> selectAll(){
		List<ClassReview> list = reviewService.selectAll();
		
		return list;
	}
	
	/**
	 * 학생 ID로 리스트 가져오기(관리자)
	 * */
	@RequestMapping("/{studentId}")
	public List<ClassReview> classReviewSearch(String studentId){
		List<ClassReview> list = reviewService.selectByStudentId(studentId);
		
		return list;
	}
	
	/**
	 * 후기 상세 보기
	 * */
	@RequestMapping("/read/{reviewId}")
	public ClassReview readReview(Long reviewId) {
		ClassReview review = reviewService.selectByReviewId(reviewId);
		
		return review;
	}
	
	/**
	 * 클래스 후기 등록 폼
	 * */
	@RequestMapping("/insertForm")
	public String insertForm(Long classId, Model model) {
		model.addAttribute("classId", classId);
		
		return "main/board/review/insertReview";
	}
	
	/**
	 * 클래스 후기 등록 (별점)
	 * */
	@RequestMapping("/insert")
	public String insertReview(ClassReview review, MultipartFile file, Long classId) throws Exception{
		review.setClasses(new Classes(classId));
		
		if(file.getSize()>0) {
			File img = new File(Link.CLASS_IMG + file.getOriginalFilename());
			file.transferTo(img);
			
			review.setReviewImg(file.getOriginalFilename());
		}
		
		
		reviewService.insert(review);
		
		return "redirect:/main/board/review/classReview";
	}
	
	/**
	 * 클래스 후기 수정 폼
	 * */
	@RequestMapping("/updateForm")
	public ModelAndView updateReviewForm(Long reviewId) {
		ClassReview review = reviewService.selectByReviewId(reviewId);
		
		return new ModelAndView("main/board/review/updateForm", "review", review);
	}
	
	/**
	 * 클래스 후기 수정
	 * */
	@RequestMapping("/update")
	public String updateReview(ClassReview review, MultipartFile file) throws Exception{
		if(file.getSize()>0) {
			File img = new File(Link.CLASS_IMG + file.getOriginalFilename());
			file.transferTo(img);
			
			review.setReviewImg(file.getOriginalFilename());
		}
		
		reviewService.update(review);
		
		return "redirect:/main/board/review/reviewDetail";
	}
	
	/**
	 * 클래스 후기 삭제
	 * */
	@RequestMapping("/delete")
	public String deleteReview(Long reviewId) {
		reviewService.delete(reviewId);
		
		return "redirect:/main/board/review/classReview";
	}
	
	/**
	 * 클래스 후기 블라인드 처리
	 * */
	@RequestMapping("/blind")
	@ResponseBody
	public String reviewBlind(Long reviewId, String reviewBlindState) {
		
		reviewService.updateBlind(reviewId, reviewBlindState);
		
		return "redirect:/";
	}
	
	/**
	 * 클래스 후기 신고 기능
	 * */
//	@RequestMapping("")
}
