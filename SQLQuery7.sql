--如何备份数据库

backup database student to disk='f:/sp.bak'


--删除数据库
drop database student

--恢复数据库

restore database student from disk='f:/sp.bak'