
create table clerk
(


cleId int   primary key,  --����Լ�� --���������ֵ
clename nvarchar(50),     --������ֵ������ͬ
age int



)

insert into clerk values(1,'�ֱ���',18)

insert into clerk values (2,'��',18)

--���벿���ֶ�
insert into clerk (cleId,clename) values(3,'��');

insert into clerk(cleId) values(4);--���������ֵ
   --����������Ϊ��
select *from clerk



��һ���ֶ�

--������
update clerk set age=38  where clename='��'

--��2�� ���ָ�ΪѦ��  ��age��Ϊ40

update clerk set clename='Ѧ��', age=40 where cleId=2


--z����Ҳ���޸�

update clerk set cleId=5 where clename='��'


--��ageΪnull���˵����ָ�Ϊ�����˵�

update clerk set clename='��' where age is null and cleId=4;


--ɾ��ָ������

delete from ���� where �ֶ���='ֵ' and �ֶ���='ֵ'

insert into clerk values(6,'����',25)


--ɾ������>=20�ģ�����<=25������age ��null

delete from clerk where(age>=20 and age<=25) or age is null