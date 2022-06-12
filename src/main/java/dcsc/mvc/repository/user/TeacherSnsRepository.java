package dcsc.mvc.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import dcsc.mvc.domain.user.TeacherSns;

public interface TeacherSnsRepository extends JpaRepository<TeacherSns, Long> {
	@Query(value = "delete from teacher_sns where teacher_id = ?1", nativeQuery = true)
	@Modifying
	void deleteByTeacherId(String teacherId);
}
