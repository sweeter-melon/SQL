--表名规范案例

--表名以字母和下划线开头

create database student

create table abc
(


--test1 char(100)
 sal numeric(10,2), --表示10位，小数为2位


)

insert  into abc values(1.211);

select  *from abc
drop table abc
--uincode编码两个字节表示一个字符（可以是英文，汉字）
--非uincode编码一个字节表示字母，两个表示汉字


--varchar可以自动分配空间
--为什么还要用char
--在这样情况下用char  确定了数据长度
--这样查询起来比较快

--ntext为可变长度的Uincode编码，2的30次方-1

--text为可变长度非unicode编码，2的31次方-1

--数字型
-- bit  0---1  超过1自动转换
-- int  2的-31次方到2的31次方
-- bigint  2的-63到2的63次方
--  numeric  小数  如果存放小数推荐

--sql server 为我们提供了专门的时间函数
--getdate

create table abc
(


--test1 char(100)
-- sal numeric(10,2), --表示10位，小数为2位
bir datetime --日期
)

insert  into abc values(GETDATE());

--image 存放图片
--binary 字段可以视频