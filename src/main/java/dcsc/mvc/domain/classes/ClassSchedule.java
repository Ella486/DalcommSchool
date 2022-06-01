package dcsc.mvc.domain.classes;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ClassSchedule {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "classschedule_id_seq")
	@SequenceGenerator(sequenceName = "classschedule_id_seq" , allocationSize = 1 , name = "classschedule_id_seq")
	private Long scheduleId;
	
	private LocalDateTime scheduleDate;
	private String startTime;
	private String endTime;
	
	@CreationTimestamp
	private LocalDateTime ScheduleInsertDate;
	
	@UpdateTimestamp
	private LocalDateTime ScheduleUpdateDate;
	
	private int totalSeat;
	private int leftSeat;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "class_id")
	private Classes classes;
	
}
