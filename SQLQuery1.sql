--�������ݿ�

--create database Heros

--������
create table Hero
(
HeroId int,--����
HeroName varchar(50),--����

HeroNick varchar(50),
sex char(2),
sal int ,

)

--ɾ��һ�ű�
--drop table Hero

--ʹ��sql������������

insert into Hero values(1,'�ν�','��ʱ��','��',20000);
insert into Hero values(2,'¬����','������','��',15000);
insert into Hero values(3,'����','�Ƕ���','��',30);
insert into Hero values(4,'����ʤ','������','��',80);

--ʹ��sql�������ѯ����

--select *from Hero;


--1.��ѯ���ʵ���100��ͬ־

select *from Hero where sal<100

--2.�ѹ��ʵ���100���˹������10%
--�﷨ update ���� set �ֶ���1=�� �ֶ���2=�� where ����
update Hero set sal=sal*1.1 where sal<100

--ɾ�������Ա�Ϊ�е�ͬ־

delete from Hero where sex='��';

