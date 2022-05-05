message table 작성

id : number(10), primary key
password : varchar2(50), not null
name : varchar2(20) 기본값 '이름없음', not null
message : varchar2(500)

id는 시퀀스로 생성
시퀀스 이름 : message_seq
create sequence message_seq start with 1 increment by 1 maxvalue 9999999 cycle;

시퀀스로 데이터 삽입하는방법
insert into message values (message_seq.nextval, ? ,? ,?);

프로젝트 구조
config
	ConnectionProvider ==> String url , String userid, String password
dao
	MessageDao
model
	Message
service
	MessageService
servlet
	MessageServlet

필요한 라이브러리
ojdbc8.jar
jstl-1.2.jar
JUnit 5
	
처리해야할 요청
	 /write : 메세지 작성
	 /messageList : 메시지 목록 화면 요청
	 /pwCheck : 비밀번호를 확인해주는 요청
화면
	messageList.jsp : 메시지 목록, 밑에 메시지 입력창을 보여주는 화면
	result.jsp : 메시지 작성 결과를 경고창으로 출력하는 jsp파일, messageList로 화면이동
	confirmDelete.jsp : 메시지 삭제시 비밀번호를 입력받는 화면