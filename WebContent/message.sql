message table �ۼ�

id : number(10), primary key
password : varchar2(50), not null
name : varchar2(20) �⺻�� '�̸�����', not null
message : varchar2(500)

id�� �������� ����
������ �̸� : message_seq
create sequence message_seq start with 1 increment by 1 maxvalue 9999999 cycle;

�������� ������ �����ϴ¹��
insert into message values (message_seq.nextval, ? ,? ,?);

������Ʈ ����
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

�ʿ��� ���̺귯��
ojdbc8.jar
jstl-1.2.jar
JUnit 5
	
ó���ؾ��� ��û
	 /write : �޼��� �ۼ�
	 /messageList : �޽��� ��� ȭ�� ��û
	 /pwCheck : ��й�ȣ�� Ȯ�����ִ� ��û
ȭ��
	messageList.jsp : �޽��� ���, �ؿ� �޽��� �Է�â�� �����ִ� ȭ��
	result.jsp : �޽��� �ۼ� ����� ���â���� ����ϴ� jsp����, messageList�� ȭ���̵�
	confirmDelete.jsp : �޽��� ������ ��й�ȣ�� �Է¹޴� ȭ��