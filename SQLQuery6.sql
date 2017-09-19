--创建一张表
create table test1
(

testId int primary key identity(1,1),--自增长
testname varchar(30) ,--not null,
testpass varchar(30) ,--not null,
testage int ,
 


)
insert into test1(testage) values(3)
insert into test1 values(' ',' ',3)


create table test2
(

testId int primary key identity(1,1),--自增长
testname varchar(30) unique ,--唯一,该列值不能重复，但可以为null
testpass varchar(30) ,--not null,
testage int ,
 


)

--主键

--一张表只能有一个主键，但可以有多个约束

--表可以有复合主键

--复合主键

create table test3
(

testId int ,
testname varchar(30) ,
testpass varchar(30) ,
testage int ,
 primary key (testId,testname),--复合主键，主键不能重复


)

--行级定义和表级定义


--foreign key(外键约束)

--用于定义主表和从表之间的关系


create table test4
(

testId int ,
testname varchar(30) ,
testpass varchar(30) ,
sal int check(sal>1000 and sal<2000)--规定sal的值
	

)

--default 使用

create table mes
(

mesId int primary key identity(1,1),
mescon varchar(2000) not null,
mesdate datetime default getdate(),--默认系统时间


)

insert into mes(mescon) values('你好');


--具体案例
--goods表
create table goods
(
goodsId nvarchar(50) primary key,

goodsName nvarchar(80) not null,

unitprice numeric (10,2) check (unitprice>0),

category nvarchar(3) check(category in ('食物','日用品')),

provide nvarchar(50),

)

--customer

create table customer
(
customerId nvarchar(50) primary key,
cusname nvarchar(50) not null,
address nvarchar(100),

email nvarchar(100) unique,
sex nchar(1) check(sex in('男','女')),
cardId nvarchar(18),




)

--purchase

create table purchase
(
customerId nvarchar(50) foreign key references customer(customerId),
goodsId nvarchar(50) foreign key references goods(goodsId), 
nums int check(nums>0),

)