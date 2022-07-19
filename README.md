# DalcommSchool

베이킹 원데이 클래스 중개를 위한 웹 어플리케이션 프로젝트

![localhost_8888_ (3)](https://user-images.githubusercontent.com/100504037/179753139-9539e568-5756-4a99-a401-b6a1c9364405.png)


## 📃  달콤스쿨 개요

한국소프트웨어기술진흥협회(KOSTA)의 대용량 웹서비스를 위한 MSA Full-Stack SW 개발자 양성과정 파이널 프로젝트입니다.

Java와 Spring boot, JPA 등 지금까지 배운 모든 기술을 모두 사용해 만들었습니다.

해당 과정 최종 발표회에서 최우수상을 수상했습니다.

달콤스쿨은 증가하는 원데이 클래스 수요에 발맞추어

1. 강사에게는 간편한 플랫폼과 홍보의 기회를
2. 수강생에게는 다양한 클래스를 한 번에 비교해 원하는 클래스를 선택할 수 있는 기회를 제공하고
3. 일정의 중개 수수료로 수익을 얻는

platform business를 겨냥해 만들어졌습니다.

## ⚙  기능 요약

1. 회원 관리(강사/수강생 회원 가입, 로그인, 로그아웃, 회원 정보, 수정 회원 탈퇴)
2. 클래스 관리(클래스 등록, 수정 삭제, 조회, 클래스 일정 등록, 수정, 삭제, 조회)
3. 예약 관리(찜 등록, 삭제, 조회, 클래스 예약 등록, 수정, 삭제, 조회)
4. 게시판 관리(공지사항 게시판, FAQ 게시판, 이벤트 게시판, 1대1문의, 클래스 후기, 클래스 Q&A 등록, 수정, 삭제, 조회)
5. 쿠폰 관리(쿠폰 등록, 수정, 삭제, 조회, 유저에게 쿠폰 등록)
6. 정산 관리(정산 등록, 수정, 삭제, 조회)
7. 통계(강사 클래스 구매자 비율, 강사 클래스 총 매출 비율, 지역별 클래스 매출 조회, 카테고리별 클래스 매출 조회)

## 🗓  개발 기간

- **설계** 2022.05.04 ~ 2022.05.31
- **개발** 2022.05.31 ~ 2022.06.25

## 👩🏻‍💻 멤버 구성

- **김유다(팀장)**
    - 클래스 관리, 예약 관리, 통계 기능
- **김순주**
    - 공지사항 게시판 관리, FAQ 게시판 관리
- **박종휘**
    - 강사 관리, 클래스 후기 관리
- **이명진**
    - 클래스 Q&A 게시판 관리, 쿠폰 관리, 정산 관리
- **최선정**
    - 수강생 관리, 이벤트 게시판 관리
- **하용현**
    - 1대1 문의 게시판 관리

## 🛠  개발 환경

- Java11

> 유지, 보수에 용이한 객체 지향 언어이며, JVM을 기반으로 동작하여 다양한 플랫폼에서 호환이 가능하기때문에 JAVA를 사용했습니다.
> 

> 웹 어플리케이션 개발에 가장 많이 이용되는 언어로 관련 프레임워크와 라이브러리가 풍부한 JAVA 기반으로 프로젝트를 진행했습니다.
> 
- HTML5, CSS3
- JavaScript, jQuery

- Oracle Cloud

> 다수의 팀원이 실시간으로 DB 변경을 확인할 수 있도록 무료 Cloud 기능을 제공하는 Oracle Cloud를 선택했습니다.
> 

- Spring Boot

> Spring의 xml 설정과 라이브러리 버전 관리를 간소화해 개발에 집중할 수 있도록 Spring Boot를 사용했습니다.
> 

- JPA

> 복잡한 DB 연관관계로 다수의 조인이 예상되어, 연관된 객체를 보다 쉽게 가져오고자 조인이 간편한 JPA를 사용했습니다.
>
