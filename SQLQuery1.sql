--创建数据库

--create database Heros

--创建表
create table Hero
(
HeroId int,--排名
HeroName varchar(50),--名字

HeroNick varchar(50),
sex char(2),
sal int ,

)

--删除一张表
--drop table Hero

--使用sql语句来添加数据

insert into Hero values(1,'宋江','及时雨','男',20000);
insert into Hero values(2,'卢俊义','玉麒麟','男',15000);
insert into Hero values(3,'吴用','智多星','男',30);
insert into Hero values(4,'公孙胜','入云龙','男',80);

--使用sql语句来查询数据

--select *from Hero;


--1.查询工资低于100的同志

select *from Hero where sal<100

--2.把工资低于100的人工资提高10%
--语法 update 表名 set 字段名1=？ 字段名2=？ where 条件
update Hero set sal=sal*1.1 where sal<100

--删除工资性别为男的同志

delete from Hero where sex='男';

