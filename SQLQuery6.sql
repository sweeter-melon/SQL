--����һ�ű�
create table test1
(

testId int primary key identity(1,1),--������
testname varchar(30) ,--not null,
testpass varchar(30) ,--not null,
testage int ,
 


)
insert into test1(testage) values(3)
insert into test1 values(' ',' ',3)


create table test2
(

testId int primary key identity(1,1),--������
testname varchar(30) unique ,--Ψһ,����ֵ�����ظ���������Ϊnull
testpass varchar(30) ,--not null,
testage int ,
 


)

--����

--һ�ű�ֻ����һ���������������ж��Լ��

--������и�������

--��������

create table test3
(

testId int ,
testname varchar(30) ,
testpass varchar(30) ,
testage int ,
 primary key (testId,testname),--�������������������ظ�


)

--�м�����ͱ�����


--foreign key(���Լ��)

--���ڶ�������ʹӱ�֮��Ĺ�ϵ


create table test4
(

testId int ,
testname varchar(30) ,
testpass varchar(30) ,
sal int check(sal>1000 and sal<2000)--�涨sal��ֵ
	

)

--default ʹ��

create table mes
(

mesId int primary key identity(1,1),
mescon varchar(2000) not null,
mesdate datetime default getdate(),--Ĭ��ϵͳʱ��


)

insert into mes(mescon) values('���');


--���尸��
--goods��
create table goods
(
goodsId nvarchar(50) primary key,

goodsName nvarchar(80) not null,

unitprice numeric (10,2) check (unitprice>0),

category nvarchar(3) check(category in ('ʳ��','����Ʒ')),

provide nvarchar(50),

)

--customer

create table customer
(
customerId nvarchar(50) primary key,
cusname nvarchar(50) not null,
address nvarchar(100),

email nvarchar(100) unique,
sex nchar(1) check(sex in('��','Ů')),
cardId nvarchar(18),




)

--purchase

create table purchase
(
customerId nvarchar(50) foreign key references customer(customerId),
goodsId nvarchar(50) foreign key references goods(goodsId), 
nums int check(nums>0),

)