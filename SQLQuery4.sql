
--���������


����һ�����ݿ�
create database spdbl

����dept��
create  table dept
(
deptno int  primary key,

dname  nvarchar(30),

loc nvarchar(30) ,





)

����emp��

create table emp
(

empno int  primary key,

ename  nvarchar(30),

job nvarchar(30),
mgr int,

hiredate datetime,

sal numeric(10,2),

comm numeric(10,2),

--��Ϊdeptno������Ҫ�������
deptno int  foreign key references dept(deptno)


)

--����������ע�⣺

--1.���ֻ��ָ������
--2.�����������������Ҫһ��


��ѯ������

--select *from emp(����) where ����

��ѯsimth��нˮ,����,���ڲ���

select sal,job,deptno from emp where ename='smith',


���ȡ���ظ���

--select distinct �ֶ� from���� where ����;

select distinct deptno,sal from emp; --ȡ���ظ���


--distinctֻ��������ȫ��ͬ����


--ʹ���������ʽ

--��ʾÿ����Ա���깤��+����

--select ename ,sal*13+comm*13  �깤��(�еı���) from emp;

--��δ���յ����� 

--��Ϊnull��һ����Ϊnul����һ����ҲΪnull

--��ν��sal*13+comm*13�д���null������

--select ename ,sal*13+isnull(comm,0)*13  �깤��(�еı���) from emp;

--�����ʾ���ʸ���3000��Ա��

--Select *from emp where sal>3000

--��β���1982 1.1 ����ְ��Ա��

--select *from  emp where hiredate>'1982-1-1'

--�����ʾ����2000��2500��Ա��

--select *from emp where sal >2000 and sal<2500
--select *from emp where sal between 2000 and 2500



���ʹ��like������

--�����ʾ�������ַ�ΪS��Ա�������͹���

--select ename,sal from emp where ename like 'S%'

--�����ʾ�������ַ�Ϊ��дO��Ա�������͹���

--select ename,sal from emp where  ename like '__O%'


--��where������ʹ��in

--�����ʾempnoΪ123,345,800 �Ĺ�Ա
--select *from emp where empno=123 or empno=345 or empno=800

--һ��ʹ��in�ؼ���Ч�ʸ���

--select *from emp where empno in(123,345,800)



--�����ʾû���ϼ��Ĺ�Ա�����

--select *from emp where mgr is null




--ʹ���߼�������

--��ѯ���ʸ���500���Ǹ�λΪMANAGER�Ĺ�Ա��ͬʱ����������д��ĸΪj

--select *from emp where (sal >500o or job='manager') and ename like 'J%'

--��ΰ��չ��ʴӵ͵��ߵ�˳����ʾ��Ա��Ϣ

--order by Ĭ��Ϊ��������

--select *from emp order by sal;

--order by sal desc ��������
--order by sal asc ��������

--������ְ�Ⱥ�˳������

--select *from emp order by hiredate asc

--�������ֵ��Ⱥ�˳�򣨰���ĸ˳��

--select *from emp order by ename asc

--���ղ��ź��������Ա�Ĺ��ʽ�������

--select *from emp order by deptno asc��sal desc �ȿ��ǲ��ź�

--ʹ���еı�������

--ͳ��ÿ���˵���н�������մӵ͵��ߵ�˳������

--select ename,(sal+isnull(comm,0))*13 ��н���еı����� from emp order by ��н


--��ҳ��ѯ

--�Ȼ�һ������һ��ʱ�����


--�����ʾ����Ա���е���ߺ���͹���

--select min(sal) from emp;
--select max(sal) from emp;

--�����ʾ��͹��ʺ͸ù�Ա������

--select ename,sal from emp where sal=(select min(sal) from emp) ;


--��ʾ����Ա����ƽ�����ʺ͹����ܺ�

--select avg(sal) ƽ�����ʣ� sum(sal) �ܹ��� from emp;

--�Ѹ���ƽ�����ʵ�Ա�������ֺ����Ĺ�����ʾ

select ename,sal from emp where sal>(select avg(sal) from emp);

--���㹲�ж���Ա��

--select count(*) from emp

--�õ��������ŵ�����
--select count(*),deptno from emp group by deptno

--group by �� having �Ӿ�

--group by ���ڶԲ�ѯ�������ͳ��
--having �������Ʒ�����ʾ���

--�����ʾÿ�����ŵ�ƽ�����ʺ���߹���

--select AVG(sal) ƽ������ ,max(sal) ��߹��ʣ�deptno from emp group by deptno


--��ʾÿ�����ŵ�ÿ�ָ�λ��ƽ�����ʺ���͹���

--select AVG(sal),min(sal), deptno ,job from emp group by depto,job;

--��ʾƽ�����ʵ���2000�Ĳ��źź�����ƽ������


--having ������group by ���ʹ�ã����Ʒ����ѯ
select avg(sal),deptno from emp group by deptno having avg(sal)<2000
order by AVG(sal) asc;

--���select�����ͬʱ����group by ��having ��order by��
--����group by ��having ��order by˳��ʹ��




--����ѯ

--select *from emp,dept --û��������������ظ���¼

--��ʾ��Ա������Ա���ʼ����ڲ��ŵ�����

--������ű�����ͬ���ֵ��ֶΣ�����Ҫ��������������

--select ename,sal,loc from emp,dept where dept.dname=
--'sales' and emp.deptno=dept.deptno

--�ñ���
--select ename,sal,loc from emp e,dept d where d.dname=
--'sales' and e.deptno=d.deptno


--�����ʾ���ź�Ϊ10�Ĳ�������Ա�������͹���

--select d.dname,e.ename,e.sal from emp e, demp d 
--where e.deptno=10 and e.deptno=d.deptno


--��ʾ��Ա������Ա���ʼ����ڲ��ŵ����ֲ�����������

--select e.ename,e.sal,d.dname  from emp e,dept d
-- where e.deptno=d.deptno order by d.dname


--������

--��ʾĳ��Ա�����ϼ��쵼������ ������ʾ'FORD'���ϼ�

--1.֪��FORD�ϼ����

--select ename from emp where empno=(select mgr from emp 
--where ename='ford')

--��ʾ��˾ÿ��Ա�������ֺ������ϼ�������

--���� ����emp�������ű��ֱ���worker�� boss



--select worker.ename,boss.ename from emp worker ,emp boss 
--where worker.mgr=boss.empno

--������(�������Ӻ���������)
-- �Ƚϸ���


--�Ӳ�ѯ��Ƕ�ײ�ѯ��

--�����Ӳ�ѯ
--ֻ����һ�����ݵ��Ӳ�ѯ���

--�����ʾ��smithͬһ���ŵ�����Ա������

--select ename from emp where deptno=
--(select deptno from emp where ename='smith')


--�����Ӳ�ѯ
--���ض������ݵ��Ӳ�ѯ

--��β�ѯ�Ͳ���10�Ĺ�����ͬ�Ĺ�Ա�����֣���λ�����ʣ����ź�

--select *from emp where job in�������õȺ��ˣ������Ӳ�ѯ��
--(select distinct job from emp where deptno=10 )


--��from�Ӿ���ʹ���Ӳ�ѯ

--�����ʾ���ڲ���ƽ�����ʵ�Ա������Ϣ

--1.����Ҫ֪���������ŵ�ƽ������

--select avg(sal),depto from emp group by deptno

--2.������Ĳ�ѯ�������һ����ʱ��Դ�
 --select emp.eanme,emp.sal,tem.myavg,emp.deptno from emp,
 --(select avg(sal),depto from emp group by deptno) as tem
 --where emp.deptno=tem.deptno and emp.sal>tem.myavg
 

--��ҳ��ѯ
--����ʾ���������ʮ����ְ�Ĺ�Ա������ʱ����Ⱥ�˳��
--1.��ʾ��һ�������ĸ���ְ�Ĺ�Ա
--select top 4*from emp order by hiredate

--select *from emp order by hiredate

--���������
--select top 6* from emp where empno not in
--(select top 4*from emp order by hiredate)order by hiredate 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 