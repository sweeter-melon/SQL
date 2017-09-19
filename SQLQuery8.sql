
create table stus
(

stuId varchar(30) primary key ,

stuName nvarchar(30) not null,
stuSex  nchar(1) check(stuSex in ('男','女'))default '男',
stuAge int check(stuAge>1),
stuJg nvarchar(30),
stuDept nvarchar(40),
)

insert into stus values('sp001','wukong','男',500,'花果山','少林');
insert into stus values('sp002','bajie','男',20,'高老庄','武当');

insert into stus values('sp004','shao','女',30,'流沙河','水里');
insert into stus values('sp005','shifu','男',26,'长安','庙里');


select *from stus