INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('lee1234', 'Lee12345', '�̳���', '01011111111', 'lee@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('park1234', 'Park12345', '�ڹ̿�', '01022222222','park@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('choi1234', 'Choi12345', '�ְ���', '01033333333', 'choi@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('kim1234', 'Kim12345', '��ٿ�', '01044444444', 'kim@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('haa1234', 'Haa12345', '������', '01055555555', 'haa@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('moon1234', 'Moon12345', '���Ͽ�', '01066666666', 'moon@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('hong1234', 'Hong12345', 'ȫ�ֿ�', '01077777777', 'hong@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('goo1234', 'Goo12345', '���ο�', '01088888888', 'goo@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('ann1234', 'Ann12345', '���ؿ�', '01099999999', 'ann@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('jang1234', 'Jang12345', '�念��', '01011112222', 'jang@naver.com', systimestamp, 'F');

select*from student;
commit;
--������ 
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tlee1234' , 'Lee12345','�̼���','�̻ڴ�','01099999992', '01099999991', 'Tlee@naver.com','���� �Ұ����Դϴ�.','�̼����������ʻ����Դϴ�.' , 2000000, 1500000, systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tjang1234' , 'Jang12345', '�嵵��', '�����ѳ���', '01088888882', '01088888881', 'Tjang@naver.com','���� �Ұ����Դϴ�.', '�嵵�ش������ʻ����Դϴ�.' , 3000000, 1000000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tann1234' , 'Ann12345', '�ȳ���', '���õ��ȴ���', '01077777772', '01077777771', 'Tann@naver.com','���� �Ұ����Դϴ�.', '�ȳ����������ʻ����Դϴ�.' , 4000000, 1500000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tgoo1234' , 'Goo12345', '������', '����88', '01066666662', '01066666661', 'Tgoo@naver.com','���� �Ұ����Դϴ�','������������ʻ����Դϴ�.' , 2000000, 500000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Thong1234' , 'Hong12345', 'ȫ�ֿ�', 'ȣȣȣ', '01055555552', '01055555551', 'Thong@naver.com','���� �Ұ����Դϴ�.','ȫ�ֿ��������ʻ����Դϴ�.' , 3500000, 2500000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tmoon1234' , 'Moon12345', '������', '�޴Ժ���', '01044444442', '01044444441', 'Tmoon@naver.com','���� �Ұ����Դϴ�.', '�������������ʻ����Դϴ�.' , 2000000, 1500000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Thaa1234' , 'Haa12345', '�ϼ���', '����ȣȣ', '01033333332', '01033333331', 'Thaa@naver.com','���� �Ұ����Դϴ�.','�ϼ����������ʻ����Դϴ�.' , 5000000, 1500000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tkim1234' , 'Kim12345', '�蹮��', '����', '01022222223', '01022222221', 'Tkim@naver.com','���� �Ұ����Դϴ�.', '�蹮���������ʻ����Դϴ�.' , 2000000, 1000000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tchoi1234' , 'Choi12345', '�ֳ���', '�ְ��Ǳ����', '01011111112', '01011111113', 'Tchoi@naver.com','���� �Ұ����Դϴ�.', '�ֳ����������ʻ����Դϴ�.' , 3000000, 1500000,systimestamp,'F');
INSERT INTO teacher(teacher_id,teacher_pwd,teacher_name,teacher_nickname,teacher_phone,teacher_tel,teacher_email,teacher_info,teacher_img,total_profit,adjustable,teacher_insert_date,teacher_quit) values( 'Tpark1234' , 'Park12345', '������', '�����������', '01099998882', '01099998881', 'Tpark@naver.com','���� �Ұ����Դϴ�.', '������������ʻ����Դϴ�.' , 2000000, 1500000,systimestamp,'F');

select*from teacher;

delete from teacher where teacher_img='�̼����������ʻ����Դϴ�.';

--1��1����     �ȉ�
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'lee1234' , 'Tlee1234', '�κ�ȯ���� ���մϴ�', 'ȯ��', 'Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��' , null, systimestamp, systimestamp, 'T');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'park1234' , 'Tpark1234', 'Ŭ���� ��� ��û ���θ� �˱� ���մϴ�', 'Ŭ����', 'Ŭ���� ��Ͻ�û�� �ϳ��ߴµ� ���� �Ϸᰡ �Ǵ��� �ñ��մϴ�.' , null, systimestamp, systimestamp, 'F');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'choi1234' , 'Tchoi1234', '�ı� ����ε�ó�� ���ǵ帳�ϴ�.', '�ı�', '������ �ı⸦ �ۼ��ߴµ� ���� �ۼ��� �ıⰡ ������ �ʽ��ϴ�.' , null, systimestamp, systimestamp, 'F');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'kim1234' , 'Tkim1234', '����� Ŭ������ �����ϰ� �;��', 'Ŭ����', 'Ŭ������ �ϳ� ����ߴµ� ��Ÿ�� �ϳ� �־ ������ �ϰ� �ͽ��ϴ�.' , null, systimestamp, systimestamp, 'F');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'lee1234' , 'Tlee1234', 'ȯ�����ּ���', 'ȯ��', 'Ŭ������ �����ϰ� ������ ������ ����Բ��� �غ��� ��ᰡ �ʹ� �̻��߽��ϴ�. ȯ�� ��û�帳�ϴ�.' , null, systimestamp, systimestamp, 'F');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'haa1234' , 'Thaa1234', 'ȸ��Ż�� �ϰ� �;��', 'Ż��', 'ȸ��Ż�� �ϰ� ������ ��� Ż���ؾ��ϴ��� �� �𸣰ڽ��ϴ�. �ڼ��� ���� ��Ź�帳�ϴ�.' , null, systimestamp, systimestamp, 'T');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'moon1234' ,'Tmoon1234', '������ ��� ������ ����', '����', 'Ŭ������ �����û�Ϸ��� �ϸ� �ڲ� �����κп��� ������ ���ϴ�.' , null, systimestamp, systimestamp, 'T');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'hong1234' , 'Thong1234', '�κ�ȯ�������մϴ�', 'ȯ��', 'Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��' , null, systimestamp, systimestamp, 'F');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'goo1234' , 'Tgoo1234', 'Ȯ���� Ŭ���� ������ �˰� �;��', 'Ŭ����', '���ϴ� Ŭ������ ������ ��� �ȿö�ͼ��� ��Ȯ�� ������ �˰� �ͽ��ϴ�.' , null, systimestamp, systimestamp, 'F');
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'ann1234' , 'Tann1234', 'Ŭ���� ������Ҹ� ���մϴ�.', 'ȯ��', '�÷ȴ� Ŭ������ ���ϰ� ������� �ٲٰ� �;��' , null, systimestamp, systimestamp, 'F');

alter table class_schedule add schedule_finished varchar2(255 char) default 'F'

update set schedule_finished = 'F'

create SEQUENCE ask_no_seq noCACHE;

--1��1 ���Ǵ��  �ȉ�
INSERT INTO ANSWER(answer_no, ask_no, answer_content, answer_insert_date) VALUES(answer_no_seq.NEXTVAL, ask_no_seq.CURRVAL, '���� ���� ����Ʈ ȯ�� ��å�� �κ�ȯ���� ��ƽ��ϴ�', systimestamp);
INSERT INTO ANSWER(answer_no, ask_no, answer_content, answer_insert_date) VALUES(answer_no_seq.NEXTVAL, ask_no_seq.CURRVAL, '���� ȸ��Ż�� ����� ���ֹ������� �Խ��ǿ� ������ ���� ���� �ֽ��ϴ�.', systimestamp);
INSERT INTO ANSWER(answer_no, ask_no, answer_content, answer_insert_date) VALUES(answer_no_seq.NEXTVAL, ask_no_seq.CURRVAL, '���� �˼��մϴ� ���� ����Ʈ�� ����  ����12�ú��� 30������ ���� �ý��� �������� ���ؼ� �� �ð����� ������ ��ƽ��ϴ�. ', systimestamp);
commit;
--Ŭ����
INSERT INTO CLASSES(class_id, teacher_id, state_id, class_name, class_info, class_price, class_insert_date, class_update_date, class_open_date, category_id) VALUES(CLASS_ID_SEQ.nextval, 'Tlee1234', 1, '��ī�ո����', '���� ��ī�ո����� ���� �ϼ��� �����ϸ� 4�ð����� ������ ����˴ϴ�.', '30000', systimestamp, systimestamp, systimestamp, 4);
INSERT INTO CLASSES(class_id, teacher_id, state_id, class_name, class_info, class_price, class_insert_date, class_update_date, class_open_date, category_id) VALUES(CLASS_ID_SEQ.nextval, 'Tann1234', 2, 'Ŀ���� ���� �����', '���� Ŀ���� ���� ������ ���� �ϼ��� �����ϸ� 6�ð����� ������ ����˴ϴ�.', '80000', systimestamp, systimestamp, systimestamp, 3);
INSERT INTO CLASSES(class_id, teacher_id, state_id, class_name, class_info, class_price, class_insert_date, class_update_date, class_open_date, category_id) VALUES(CLASS_ID_SEQ.nextval, 'Tgoo1234', 3, '�������� �����', '���� �������� ������ ���� �ϼ��� �����ϸ� 5�ð����� ������ ����˴ϴ�.', '30000', systimestamp, systimestamp, systimestamp, 6);
INSERT INTO CLASSES(class_id, teacher_id, state_id, class_name, class_info, class_price, class_insert_date, class_update_date, class_open_date, category_id) VALUES(CLASS_ID_SEQ.nextval, 'Tchoi1234', 3, '��Ű �����', '���� ��Ű ������ ���� �ϼ��� �����ϸ� 3�ð����� ������ ����˴ϴ�.', '25000', systimestamp, systimestamp, systimestamp, 1);
INSERT INTO CLASSES(class_id, teacher_id, state_id, class_name, class_info, class_price, class_insert_date, class_update_date, class_open_date, category_id) VALUES(CLASS_ID_SEQ.nextval, 'Tkim1234', 3, '�ݷ�����Ű �����', '���� �ݷ�����Ű ������ ���� �ϼ��� �����ϸ� 3�ð�30�е��� ������ ����˴ϴ�.', '50000', systimestamp, systimestamp, systimestamp, 7);
INSERT INTO CLASSES(class_id, teacher_id, state_id, class_name, class_info, class_price, class_insert_date, class_update_date, class_open_date, category_id) VALUES(CLASS_ID_SEQ.nextval, 'Tpark1234', 3, '��ũ�� �� �����', '���� ��ũ�� �� ������ ���� �ϼ��� �����ϸ� 2�ð����� ������ ����˴ϴ�.', '20000', systimestamp, systimestamp, systimestamp, 1);

--Ŭ����ī�װ�
set escape on
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, '��Ű');
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, '�������');
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, '��');
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, '����ũ');
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, '��ī��');
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, '����\&Ÿ��Ʈ');
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, '��');
INSERT INTO CLASS_CATEGORY VALUES(category_id_seq.nextval, 'for �ݷ�����');
set escape off

CREATE SEQUENCE  category_id_seq
        START WITH 1
        INCREMENT BY 1;

Alter table class_qna rename column qnacontent to qna_content;
commit;
--Ŭ���� Q&A �ȉ�
insert into class_qna values ( qna_id_seq.nextval , false, true, systimestamp, '���� ���� �帳�ϴ�.', null, '�� ����� ���� �������� ������ Ȥ�� �������� ������ �ǳ���?', false, class_id_seq.currval, 'Lee12345');
insert into class_qna values ( qna_id_seq.nextval , false, false, systimestamp, '��� ���ǵ帳�ϴ�.', null, '�߰��� �˷����� �ִµ� ��� ��ü�� �����Ѱ���?', false, class_id_seq.currval, 'kim1234');
insert into class_qna values ( qna_id_seq.nextval , false, true, systimestamp, '�������� ���� �����.', null,'���������� �󸶳� ������ �ñ��մϴ�. ���� �� Ŀ�� ������ ���� �ʿ��մϴ�.', false, class_id_seq.currval, 'haa1234');
insert into class_qna values ( qna_id_seq.nextval , false, false, systimestamp,'���� ���� �����', null, '���̵��� �������� ���������?', false, class_id_seq.currval, 'moon1234');
insert into class_qna values ( qna_id_seq.nextval , false, false, systimestamp, '���� �����ߴµ� ���� �帳�ϴ�.', null, '���� �����ϰ� ������ ���� �� ���� ���� ��¥�� ������ ���ñ��??', false, class_id_seq.currval, 'hong1234');
insert into class_qna values ( qna_id_seq.nextval , false, false, systimestamp,'���� ���� ������ ���� �ɱ��?', null, 'Ŭ���� ���뺸�� �������� ���� ����� �� ������ �����ϴ� ���� ���� �� �ֳ���?', false, class_id_seq.currval, 'goo1234');
insert into class_qna values ( qna_id_seq.nextval , false, true, systimestamp, '��� ���԰� ������ �ɱ��?', null,'Ŭ�������� ����ϴ� ����� ���԰�� ���� �ɱ��??', true, class_id_seq.currval, 'ann1234');
insert into class_qna values ( qna_id_seq.nextval , false, true, systimestamp,'��� ���� ���� ���缺���ΰǰ���?', null, 'Ŭ�������� ���� ������ ����µ� ���缺���� �� ���ų� ����Ѱ���?', false, class_id_seq.currval, 'jang1234');
insert into class_qna values ( qna_id_seq.nextval , false, false, systimestamp,'��� ���� ���� �帳�ϴ�.', null, '�Թд�� �˷�ν��θ� �̷������ �ƴ϶� ������ ��� ���� �����Ѱǰ���?', true, class_id_seq.currval, 'moon1234');
insert into class_qna values ( qna_id_seq.nextval , false, true, systimestamp,'������� ���ǵ帳�ϴ�.', null, '�� ����� ��������� ��� �ǳ���??', true, class_id_seq.currval, 'haa1234');
insert into class_qna values ( qna_id_seq.nextval , false, false, systimestamp,'�������� �˷��� ���� ���ǵ帳�ϴ�.', null, '���� �������� �߰�� �˷����� �ִµ� ��� ���� �����ұ��?', false, class_id_seq.currval, 'kim1234');

create SEQUENCE qna_id_seq nocache;
commit;

--Ŭ���� Q&A��� �ȉ�
insert into class_reply values(reply_id_seq.nextval, '�� ^^ �������� ���� �����Ǳ� ������ ���� �����ذ��ŵ� �˴ϴ�~', systimestamp, null, qna_id_seq.currval, 'Tlee1234');
insert into class_reply values(reply_id_seq.nextval, '�ǹ� �������� ���� ������ ������ �˳��� ���Դϴ�.', systimestamp, null, qna_id_seq.currval, 'Tjang1234');
insert into class_reply values(reply_id_seq.nextval, '���� ��� ������ �ټ� ��������� �����޿� ��� ���԰� �˴ϴ�', systimestamp, null, qna_id_seq.currval,'Tgoo1234');
insert into class_reply values(reply_id_seq.nextval, '���缺���� ��ü�� �� ����ϳ� �ణ�� ���̰� �ֽ��ϴ�.', systimestamp, null, qna_id_seq.currval, 'Tchoi1234');
insert into class_reply values(reply_id_seq.nextval, '��������� ��� 2~3�������̳� �ִ��� ���� ��ô°� �����մϴ�.', systimestamp, null, qna_id_seq.currval, 'Tkim1234');

create SEQUENCE reply_id_seq nocache;


commit;
--Ŭ���� ���� 
insert into class_state values(state_id_seq.nextval, '���');
insert into class_state values(state_id_seq.nextval, '���� ��û');
insert into class_state values(state_id_seq.nextval, '����');
insert into class_state values(state_id_seq.nextval, '�����');
insert into class_state values(state_id_seq.nextval, '����');


--��������  
insert into notice values (notice_no_seq.nextval, '���� ������ �̿����ֽô� ���Ե鲲 �������� ���� �帳�ϴ�. ������ ����, ������ �޹��� �����ǿ��� ���Ե��� �� �� �������ֽñ� �ٶ��ϴ�.' ,  null, systimestamp, '[22.06.02] 6�� 6�� ������ ����, ������ �޹� �ȳ�', null,0);		
insert into notice values (notice_no_seq.nextval,'�ȳ��ϼ���. ���޽����Դϴ�. 22�� 6�� 3�Ϻ��� ���޽����� ���� �����ᰡ 8%���� 10%�� ������� �ȳ��帳�ϴ�.' ,  null, systimestamp, '[22.06.03] ���޽��� ���� ������ ���� �ȳ�', null,0);
insert into notice values (notice_no_seq.nextval, '22�� 6�� 5�Ϻ��� �ݷ����� ���� �������� ī�װ��� ���Ӱ� �����ϴ�. ���� ���� ��Ź�帳�ϴ�.' ,  null, systimestamp, '[22.06.04] �ݷ����� ���� �������� ī�װ� ����', null,0);
insert into notice values (notice_no_seq.nextval, '�ȳ��ϼ���. ���޽����Դϴ�. ���� �������� ���� ������ ���� 6�� 10�� 01:00~05:00���� ����Ʈ �� ���� ������ ����� �����Դϴ�.' ,  null, systimestamp, '[22.06.07] ���޽��� ���� ���� �ȳ� (06.10 01:00~05:00)', null,0);
insert into notice values (notice_no_seq.nextval,'�ȳ��ϼ���. ���޽����Դϴ�. ���޽����� ���� ���� ���ͳ� ��ȭ�� ������ ȯ���� ������ ���� [�Ű��ϱ�] ����� ���� �پ��� �ǰ��� ���� �ް� �ֽ��ϴ�. ���� �̿� ��Ź�帳�ϴ�.' ,  null, systimestamp, '[22.06.08] �Ű��ϱ� ��� �߰� �ȳ�', null,0);

--�̺�Ʈ 
insert into event values(event_no_seq.nextval, '�ű� ���� �̺�Ʈ!! 6�� 20�ϱ��� �ű� �����Ͻô� �е��� ���� ���޽����� ���������� �߱��ϰ� �ֽ��ϴ�. ���� �̿� ��Ź�帳�ϴ� ^^', null, systimestamp,'�ű� ���� �̺�Ʈ �ȳ�', null, 0);
insert into event values(event_no_seq.nextval,'�ݷ����� ���� �������� Ŭ������ �����Ͽ� ���������� �߱��մϴ�. �̿뿡 �������ֽñ� �ٶ��ϴ�.', null, systimestamp,'�ݷ����� ���� �������� Ŭ���� ���� �̺�Ʈ', null, 0);
insert into event values(event_no_seq.nextval,'�ȳ��ϼ���. ���޽����Դϴ�. ���� ������ ����Ͽ� ���� �װ��� �̺�Ʈ�� �����ϰ� �ֽ��ϴ�. ���� ���� ��Ź�帳�ϴ�.', null, systimestamp,'���� ���� ��� �̺�Ʈ', null, 0);

--Ŭ���� �ı� �ȉ�
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'���̰� ���� ���� ������ ���־��ٰ� ��� �̾߱� �ϳ׿�.',systimestamp,systimestamp,'��Ű�̹���',4,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'�ʹ� ����ְ� ����ģ���� �����ϳ׿� ~ ����� ģ���ϼ���~.',systimestamp,systimestamp,'��Ű�̹���',5,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'�������� ������� ��ģ�� �Ͻó׿� ��  �����ð����� 5�� �ʰ԰��µ� ��� ������ ��Ҹ��� �����Ͻó׿�.',systimestamp,systimestamp,'��Ű�̹���',1,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'�������� ģ���ϰ� �� �˷��ֽð� ��հ� ���� �־ ���Ҿ��. ģ���� ó�� �غ��ǵ� ������ �����߾� ����Ű��Ƽ� ���п� ��������Ϸ� ���½��ϴ�!.',systimestamp,systimestamp,'��Ű�̹���',4,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'��湮�ߴµ� ���ó� ��հ� �����߾��!',systimestamp,systimestamp,'��Ű�̹���',5,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'���̵尡 ����, �ܰ躰�� �ϼ����� ���� ����Ǿ� ���밨�� ��̸� ��� ���� �� �ֽ��ϴ�.',systimestamp,systimestamp,'��Ű�̹���',4,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'ù����ŷ �����̿��µ� ��հ� ���Ҿ��! �Ҵ��� ������µ� �����Բ��� �����ּż� �����ϰ� �߽��ϴ�! ���� ���� ���ƿ�',systimestamp,systimestamp,'��Ű�̹���',4,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'���� �ȴް� ���־�䤾��',systimestamp,systimestamp,'��Ű�̹���',4,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'����⵵ ���� ��ſ� �ð��̾����',systimestamp,systimestamp,'��Ű�̹���',4,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'��湮�ߴµ� ���ó� ��հ� �����߾��!',systimestamp,systimestamp,'��Ű�̹���',4,false);
insert into Class_Review values(review_id_seq.nextval,class_id_seq.CURRVAL,student_id.CURRVAL,'���� ����ִ� �ð��̾��� ������� ������������! ��¥ ���־�䤾��',systimestamp,systimestamp,'��Ű�̹���',4,false);

commit;
--Ŭ���� ���� �ȉ�
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'20:00',1,systimestamp,'19:00',5,1);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'17:00',2,systimestamp,'16:00',5,1);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'16:00',3,systimestamp,'15:00',5,1);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'15:00',4,systimestamp,'14:00',5,1);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'21:00',4,systimestamp,'20:00',5,1);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'18:00',5,systimestamp,'17:00',5,1);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'16:00',4,systimestamp,'15:00',5,2);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'14:00',3,systimestamp,'13:00',5,2);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'13:00',3,systimestamp,'12:00',5,2);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'15:00',4,systimestamp,'14:00',5,2);
insert into Class_Schedule values(schedule_id_seq.nextval,systimestamp,systimestamp,'16:00',4,systimestamp,'15:00',5,2);

alter table class_schedule rename column id to schedule_id;

alter table teacher modify (ADJUSTABLE number(19, 0));
alter table teacher modify (TOTAL_PROFIT number(19, 0));
--Ŭ���� �� �̹��� �ȉ�
insert into class_Image values(classimage_id_seq.nextval, systimestamp, 'T','��Ű�̹���', 1);
insert into class_Image values(classimage_id_seq.nextval, systimestamp, 'T','��ī���̹���', 2);
insert into class_Image values(classimage_id_seq.nextval, systimestamp, 'T','�Ļ��̹���',3);
insert into class_Image values(classimage_id_seq.nextval, systimestamp, 'T','��Ű2�̹���',4);
insert into class_Image values(classimage_id_seq.nextval, systimestamp, 'T','�Һ����̹���',5);
insert into class_Image values(classimage_id_seq.nextval, systimestamp, 'T','���𽺻��̹���',6);
commit;
create sequence schedule_id_seq nocache;

--���ϱ� �ȉ�
insert into likes values(like_id_seq.nextval, 1, 'kim1234');
insert into likes values(like_id_seq.nextval, 2, 'kim1234');
insert into likes values(like_id_seq.nextval, 3, 'kim1234');
insert into likes values(like_id_seq.nextval, 4, 'kim1234');
insert into likes values(like_id_seq.nextval, 5, 'kim1234');
insert into likes values(like_id_seq.nextval, 6, 'kim1234');
commit;
--���� �ȉ�




--1��1����
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'lee1234' , "Tlee1234", "�κ�ȯ���� ���մϴ�", "ȯ��", "Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��" , null, systimestamp, systimestamp, 'T')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'park1234' , "Tpark1234", "Ŭ���� ��� ��û ���θ� �˱� ���մϴ�", "Ŭ����", "Ŭ���� ��Ͻ�û�� �ϳ��ߴµ� ���� �Ϸᰡ �Ǵ��� �ñ��մϴ�." , null, systimestamp, systimestamp, 'F')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'choi1234' , "Tchoi1234", "�ı� ����ε�ó�� ���ǵ帳�ϴ�.", "�ı�", "������ �ı⸦ �ۼ��ߴµ� ���� �ۼ��� �ıⰡ ������ �ʽ��ϴ�." , null, systimestamp, systimestamp, 'F')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'kim1234' , "Tkim1234", "����� Ŭ������ �����ϰ� �;��", "Ŭ����", "Ŭ������ �ϳ� ����ߴµ� ��Ÿ�� �ϳ� �־ ������ �ϰ� �ͽ��ϴ�." , null, systimestamp, systimestamp, 'F')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'lee1234' , "Tlee1234", "ȯ�����ּ���", "ȯ��", "Ŭ������ �����ϰ� ������ ������ ����Բ��� �غ��� ��ᰡ �ʹ� �̻��߽��ϴ�. ȯ�� ��û�帳�ϴ�." , null, systimestamp, systimestamp, 'F')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'haa1234' , "Thaa1234", "ȸ��Ż�� �ϰ� �;��", "Ż��", "ȸ��Ż�� �ϰ� ������ ��� Ż���ؾ��ϴ��� �� �𸣰ڽ��ϴ�. �ڼ��� ���� ��Ź�帳�ϴ�." , null, systimestamp, systimestamp, 'T')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'moon1234' , "Tmoon1234", "������ ��� ������ ����", "����", "Ŭ������ �����û�Ϸ��� �ϸ� �ڲ� �����κп��� ������ ���ϴ�." , null, systimestamp, systimestamp, 'T')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'hong1234' , "Thong1234", "�κ�ȯ�������մϴ�", "ȯ��", "Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��" , null, systimestamp, systimestamp, 'F')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'goo1234' , "Tgoo1234", "Ȯ���� Ŭ���� ������ �˰� �;��", "Ŭ����", "���ϴ� Ŭ������ ������ ��� �ȿö�ͼ��� ��Ȯ�� ������ �˰� �ͽ��ϴ�." , null, systimestamp, systimestamp, 'F')
INSERT INTO ASK(ask_no, student_id, teacher_id, ask_title, ask_category, ask_content, ask_img, ask_insert_date, ask_update_date, ask_complete) VALUES(ask_no_seq.NEXTVAL, 'ann1234' , "Tann1234", "Ŭ���� ������Ҹ� ���մϴ�.", "ȯ��", "�÷ȴ� Ŭ������ ���ϰ� ������� �ٲٰ� �;��" , null, systimestamp, systimestamp, 'F')

commit;

-- 1��1 ���� ī�װ�
insert into ask_category values(ask_category_id_seq.nextval, 'Ŭ����');
insert into ask_category values(ask_category_id_seq.nextval, '����');
insert into ask_category values(ask_category_id_seq.nextval, 'ȯ��');
insert into ask_category values(ask_category_id_seq.nextval, '�ı�');
insert into ask_category values(ask_category_id_seq.nextval, 'Ż��');

--�л�
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('lee1234', 'Lee12345', '�̳���', '01011111111', 'lee@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('park1234', 'Park12345', '�ڹ̿�', '01022222222','park@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('choi1234', 'Choi12345', '�ְ���', '01033333333', 'choi@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('kim1234', 'Kim12345', '��ٿ�', '01044444444', 'kim@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('haa1234', 'Haa12345', '������', '01055555555', 'haa@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('moon1234', 'Moon12345', '���Ͽ�', '01066666666', 'moon@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('hong1234', 'Hong12345', 'ȫ�ֿ�', '01077777777', 'hong@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('goo1234', 'Goo12345', '���ο�', '01088888888', 'goo@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('ann1234', 'Ann12345', '���ؿ�', '01099999999', 'ann@naver.com', systimestamp, 'F');
INSERT INTO STUDENT(student_id, student_pwd, student_name, student_phone, student_email, student_insert_date, student_quit) VALUES ('jang1234', 'Jang12345', '�念��', '01011112222', 'jang@naver.com', systimestamp, 'F');



insert into ask(ask_no,student_id, ask_title,ask_category, ask_content, ask_img,ask_insert_date,ask_update_date) 
values(ask_no_seq.nextval,'lee1234','�κ�ȯ�������մϴ�', 'ȯ��','Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��' , null, systimestamp, systimestamp);

insert into ask(ask_no,student_id, ask_title,ask_category, ask_content, ask_img,ask_insert_date,ask_update_date) 
values(ask_no_seq.nextval,'park1234','�κ�ȯ�������մϴ�', 'ȯ��','Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��' , null, systimestamp, systimestamp);

insert into ask(ask_no,student_id, ask_title,ask_category, ask_content, ask_img,ask_insert_date,ask_update_date) 
values(ask_no_seq.nextval,'choi1234','�κ�ȯ�������մϴ�', 'ȯ��','Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��' , null, systimestamp, systimestamp);

insert into ask(ask_no,student_id, ask_title,ask_category, ask_content, ask_img,ask_insert_date,ask_update_date) 
values(ask_no_seq.nextval,'kim1234','�κ�ȯ�������մϴ�', 'ȯ��','Ŭ������ ������ �����ߴµ� �� �߿��� �Ϻθ� ȯ���� �ϰ� �;��' , null, systimestamp, systimestamp);

insert into place_region values (region_id_seq.nextval, '����');
insert into place_region values(region_id_seq.nextval, '���');
insert into place_region values(region_id_seq.nextval, '�λ�');
insert into place_region values(region_id_seq.nextval, '��õ');
insert into place_region values(region_id_seq.nextval, '�뱸');
insert into place_region values(region_id_seq.nextval, '���');
insert into place_region values(region_id_seq.nextval, '����');
insert into place_region values(region_id_seq.nextval, '����');
insert into place_region values(region_id_seq.nextval, '�泲');
insert into place_region values(region_id_seq.nextval, '���');
insert into place_region values(region_id_seq.nextval, '����');
insert into place_region values(region_id_seq.nextval, '����');
insert into place_region values(region_id_seq.nextval, '�泲');
insert into place_region values(region_id_seq.nextval, '���');
insert into place_region values(region_id_seq.nextval, '����');
insert into place_region values(region_id_seq.nextval, '����');
insert into place_region values(region_id_seq.nextval, '����');
commit;
alter table place drop column place_region;


insert into book_state values(book_state_id.nextval, '���� Ȯ��');
insert into book_state values(book_state_id.nextval, '���� �Ϸ�');
insert into book_state values(book_state_id.nextval, '���');
commit;
create table class_schedule (schedule_id number(19,0) not null, schedule_insert_date timestamp, schedule_update_date timestamp, end_time varchar2(255 char), left_seat number(10,0) not null, schedule_date timestamp, schedule_finished varchar2(255 char) default 'F', start_time varchar2(255 char), total_seat number(10,0) not null, class_id number(19,0), primary key (schedule_id))

alter table class_schedule drop column schedule_finished

alter table teacher add constraint

ALTER TABLE class_qna MODIFY (blind_state DEFAULT 'F');
ALTER TABLE class_qna MODIFY (QNA_COMPLETE DEFAULT 'F');
ALTER TABLE class_qna MODIFY (SECRET_STATE DEFAULT 'F');

ALTER TABLE classes ADD region_id number(19,0);
ALTER TABLE classes ADD CONSTRAINT fk_region_id foreign KEY(region_id) references place_region(region_id);