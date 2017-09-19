
create table clerk
(


cleId int   primary key,  --主键约束 --主键必须给值
clename nvarchar(50),     --主键键值不能相同
age int



)

insert into clerk values(1,'贾宝玉',18)

insert into clerk values (2,'贾',18)

--插入部分字段
insert into clerk (cleId,clename) values(3,'林');

insert into clerk(cleId) values(4);--主键必须给值
   --主键不允许为空
select *from clerk



改一个字段

--改年龄
update clerk set age=38  where clename='贾'

--把2号 名字改为薛攀  ，age改为40

update clerk set clename='薛攀', age=40 where cleId=2


--z主键也能修改

update clerk set cleId=5 where clename='林'


--把age为null的人的名字改为‘王八蛋

update clerk set clename='网' where age is null and cleId=4;


--删除指定数据

delete from 表名 where 字段名='值' and 字段名='值'

insert into clerk values(6,'焦大',25)


--删除年龄>=20的，并且<=25，或者age 是null

delete from clerk where(age>=20 and age<=25) or age is null