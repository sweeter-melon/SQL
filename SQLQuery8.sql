
create table stus
(

stuId varchar(30) primary key ,

stuName nvarchar(30) not null,
stuSex  nchar(1) check(stuSex in ('��','Ů'))default '��',
stuAge int check(stuAge>1),
stuJg nvarchar(30),
stuDept nvarchar(40),
)

insert into stus values('sp001','wukong','��',500,'����ɽ','����');
insert into stus values('sp002','bajie','��',20,'����ׯ','�䵱');

insert into stus values('sp004','shao','Ů',30,'��ɳ��','ˮ��');
insert into stus values('sp005','shifu','��',26,'����','����');


select *from stus