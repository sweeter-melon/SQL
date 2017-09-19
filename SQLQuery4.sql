
--主键和外键


创建一个数据库
create database spdbl

创建dept表
create  table dept
(
deptno int  primary key,

dname  nvarchar(30),

loc nvarchar(30) ,





)

创建emp表

create table emp
(

empno int  primary key,

ename  nvarchar(30),

job nvarchar(30),
mgr int,

hiredate datetime,

sal numeric(10,2),

comm numeric(10,2),

--因为deptno根据需要做成外键
deptno int  foreign key references dept(deptno)


)

--针对外键，请注意：

--1.外键只能指向主键
--2.外键和主键数据类型要一致


查询所有列

--select *from emp(表名) where 条件

查询simth的薪水,工作,所在部门

select sal,job,deptno from emp where ename='smith',


如何取消重复行

--select distinct 字段 from表名 where 条件;

select distinct deptno,sal from emp; --取消重复行


--distinct只能消除完全相同的行


--使用算术表达式

--显示每个雇员的年工资+奖金

--select ename ,sal*13+comm*13  年工资(列的别名) from emp;

--如何处理空的问题 

--因为null乘一个数为nul，加一个数也为null

--如何解决sal*13+comm*13中存在null的问题

--select ename ,sal*13+isnull(comm,0)*13  年工资(列的别名) from emp;

--如何显示工资高于3000的员工

--Select *from emp where sal>3000

--如何查找1982 1.1 后入职的员工

--select *from  emp where hiredate>'1982-1-1'

--如何显示工资2000到2500的员工

--select *from emp where sal >2000 and sal<2500
--select *from emp where sal between 2000 and 2500



如何使用like操作符

--如何显示姓名首字符为S的员工姓名和工资

--select ename,sal from emp where ename like 'S%'

--如何显示第三个字符为大写O的员工姓名和工资

--select ename,sal from emp where  ename like '__O%'


--在where条件中使用in

--如何显示empno为123,345,800 的雇员
--select *from emp where empno=123 or empno=345 or empno=800

--一般使用in关键字效率更高

--select *from emp where empno in(123,345,800)



--如何显示没有上级的雇员的情况

--select *from emp where mgr is null




--使用逻辑操作符

--查询工资高于500或是岗位为MANAGER的雇员，同时他们姓名首写字母为j

--select *from emp where (sal >500o or job='manager') and ename like 'J%'

--如何按照工资从低到高的顺序显示雇员信息

--order by 默认为升序排列

--select *from emp order by sal;

--order by sal desc 降序排列
--order by sal asc 升序排列

--按照入职先后顺序排列

--select *from emp order by hiredate asc

--按照名字的先后顺序（按字母顺序）

--select *from emp order by ename asc

--按照部门号升序而雇员的工资降序排列

--select *from emp order by deptno asc，sal desc 先考虑部门号

--使用列的别名排列

--统计每个人的年薪，并按照从低到高的顺序排列

--select ename,(sal+isnull(comm,0))*13 年薪（列的别名） from emp order by 年薪


--分页查询

--先缓一缓，过一段时间介绍


--如何显示所有员工中的最高和最低工资

--select min(sal) from emp;
--select max(sal) from emp;

--如何显示最低工资和该雇员的名字

--select ename,sal from emp where sal=(select min(sal) from emp) ;


--显示所有员工的平均工资和工资总和

--select avg(sal) 平均工资， sum(sal) 总工资 from emp;

--把高于平均工资的员工的名字和他的工资显示

select ename,sal from emp where sal>(select avg(sal) from emp);

--计算共有多少员工

--select count(*) from emp

--拿到各个部门的人数
--select count(*),deptno from emp group by deptno

--group by 和 having 子句

--group by 用于对查询结果分组统计
--having 用于限制分组显示结果

--如何显示每个部门的平均工资和最高工资

--select AVG(sal) 平均工资 ,max(sal) 最高工资，deptno from emp group by deptno


--显示每个部门的每种岗位的平均工资和最低工资

--select AVG(sal),min(sal), deptno ,job from emp group by depto,job;

--显示平均工资低于2000的部门号和他的平均工资


--having 往往和group by 结合使用，限制分组查询
select avg(sal),deptno from emp group by deptno having avg(sal)<2000
order by AVG(sal) asc;

--如果select语句中同时出现group by ，having ，order by，
--按照group by ，having ，order by顺序使用




--多表查询

--select *from emp,dept --没有条件，会出现重复记录

--显示雇员名，雇员工资及所在部门的名字

--如果两张表都有相同名字的字段，则需要带表名（别名）

--select ename,sal,loc from emp,dept where dept.dname=
--'sales' and emp.deptno=dept.deptno

--用别名
--select ename,sal,loc from emp e,dept d where d.dname=
--'sales' and e.deptno=d.deptno


--如何显示部门号为10的部门名，员工名，和工资

--select d.dname,e.ename,e.sal from emp e, demp d 
--where e.deptno=10 and e.deptno=d.deptno


--显示雇员名，雇员工资及所在部门的名字并按部门排序

--select e.ename,e.sal,d.dname  from emp e,dept d
-- where e.deptno=d.deptno order by d.dname


--自连接

--显示某个员工的上级领导的姓名 比如显示'FORD'的上级

--1.知道FORD上级编号

--select ename from emp where empno=(select mgr from emp 
--where ename='ford')

--显示公司每个员工的名字和他的上级的名字

--分析 ，把emp表看成两张表，分别是worker和 boss



--select worker.ename,boss.ename from emp worker ,emp boss 
--where worker.mgr=boss.empno

--外连接(左外连接和右外连接)
-- 比较复杂


--子查询（嵌套查询）

--单行子查询
--只返回一行数据的子查询语句

--如何显示与smith同一部门的所有员工名字

--select ename from emp where deptno=
--(select deptno from emp where ename='smith')


--多行子查询
--返回多行数据的子查询

--如何查询和部门10的工作相同的雇员的名字，岗位，工资，部门号

--select *from emp where job in（不能用等号了，多行子查询）
--(select distinct job from emp where deptno=10 )


--在from子句中使用子查询

--如何显示高于部门平均工资的员工的信息

--1.首先要知道各个部门的平均工资

--select avg(sal),depto from emp group by deptno

--2.把上面的查询结果当成一个临时表对待
 --select emp.eanme,emp.sal,tem.myavg,emp.deptno from emp,
 --(select avg(sal),depto from emp group by deptno) as tem
 --where emp.deptno=tem.deptno and emp.sal>tem.myavg
 

--分页查询
--请显示第五个到第十个入职的雇员（按照时间的先后顺序）
--1.显示第一个到第四个入职的雇员
--select top 4*from emp order by hiredate

--select *from emp order by hiredate

--最后调出结果
--select top 6* from emp where empno not in
--(select top 4*from emp order by hiredate)order by hiredate 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 