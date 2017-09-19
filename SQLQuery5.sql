
--如何删除一张表中的重复记录

create table cat
(

catId int,
catname  varchar(40),



)
insert into cat values(2,'bb')

select *from cat

--1.把cat表的记录distinct 后的结果放入#temp
select distinct *into #temp from cat
--2.把cat表的记录清空
delete from cat
--3.把#temp表的数据（无重复）插入cat表
insert into cat select *from #temp
--4.删除#temp
drop table #temp



--讲左外连接和右外连接

--显示公司每个员工和它的上级的名字
--内连接
--select w.ename ,b. ename from emp w, emp b where w.mgr=b.empno

--显示每个公司的每个员工和他的上级的名字，要求没有上级的，名字也要显示
--左外连接：指左边的表的记录全部显示，如果无匹配就用null

--selecet w.ename ,b.ename from emp w left join emp b on w.mgr =b.empno