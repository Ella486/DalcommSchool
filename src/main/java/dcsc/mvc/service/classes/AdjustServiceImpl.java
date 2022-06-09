package dcsc.mvc.service.classes;

import java.time.LocalDateTime;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import dcsc.mvc.domain.classes.Adjust;
import dcsc.mvc.domain.classes.AdjustState;
import dcsc.mvc.domain.user.Teacher;
import dcsc.mvc.repository.classes.AdjustRepository;
import dcsc.mvc.repository.user.TeacherRepository;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class AdjustServiceImpl implements AdjustService {
	
	private final AdjustRepository adjustRepository;
	private final TeacherRepository teacherRepository;
	
	/**
	 * 정산 가능 금액 조회 기능
	 * @param String teacherId(검색기준)
	 * @return int (정산금액)
	 * */
	@Override
	public int selectAdjust(String teacherId) {
		Teacher teacher = teacherRepository.findById(teacherId).orElse(null);
		int adjustable = teacher.getAdjustable();
		return adjustable;
	}
	
	/**
	 * 정산 신청 기능
	 * @param Adjust(강사아이디,정산금액,은행명,예금주,계좌번호)
	 * @return
	 * 정산 가능 금액 변경 : 총 수익에서 정산 신청 금액 차감 (update)
	 * */
	@Override
	public void insertAdjust(Adjust adjust) {
		int adjustPrice = adjust.getAdjustPrice();
		
		Teacher teacher = teacherRepository.findById(adjust.getTeacher().getTeacherId()).orElse(null);
		teacher.setAdjustable(teacher.getTotalProfit() - adjustPrice);
		System.out.println("teacher.getTotalProfit()=" + teacher.getTotalProfit());
		System.out.println("adjustPrice = "+ adjustPrice);
		adjustRepository.save(adjust);
		
	}
	
	/**
	 * 요청된 정산 처리 기능
	 * 
	 * 정산 상태 '정산진행중'으로 변경 (update)
	 * 
	 * state로 정산 상태 관리(정산테이블의 정산일,정산상태Id변경)
	 * 
	 * @param int adjustStateId(정렬기준)
	 * @return
	 * */
	@Override
	public void updateAdjust(Adjust adjust, AdjustState adjustState) {
		Adjust dbAdjust = adjustRepository.findById(adjust.getAdjustNo()).orElse(null);
		if(dbAdjust==null) {
			throw new RuntimeException("정산 상태를 변경하는 도중에 오류가 발생했습니다.");
		}
		dbAdjust.setAdjustState(adjustState);
		
		if(adjustState.getAdjustStateId()==3) {
			dbAdjust.setAdjustCompleteDate(LocalDateTime.now());
		}
		
	}

	/**
	 * 정산 내역 조회 기능
	 * @param String teacherId(검색기준)
	 * @return List<Adjust>
	 * */
	@Override
	public List<Adjust> selectByTeacherId(String teacherId) {
		
		List<Adjust> list = adjustRepository.findByTeacherTeacherIdEquals(teacherId);
		return list;
	}
	
	/**
	 * 정산 내역 전체 조회 - 관리자
	 * @return List<Adjust>
	 * */
	@Override
	public List<Adjust> selectAll() {
		List<Adjust> list = adjustRepository.findAll();
		return list;
	}

}