
--���ɾ��һ�ű��е��ظ���¼

create table cat
(

catId int,
catname  varchar(40),



)
insert into cat values(2,'bb')

select *from cat

--1.��cat��ļ�¼distinct ��Ľ������#temp
select distinct *into #temp from cat
--2.��cat��ļ�¼���
delete from cat
--3.��#temp������ݣ����ظ�������cat��
insert into cat select *from #temp
--4.ɾ��#temp
drop table #temp



--���������Ӻ���������

--��ʾ��˾ÿ��Ա���������ϼ�������
--������
--select w.ename ,b. ename from emp w, emp b where w.mgr=b.empno

--��ʾÿ����˾��ÿ��Ա���������ϼ������֣�Ҫ��û���ϼ��ģ�����ҲҪ��ʾ
--�������ӣ�ָ��ߵı�ļ�¼ȫ����ʾ�������ƥ�����null

--selecet w.ename ,b.ename from emp w left join emp b on w.mgr =b.empno