--�����淶����

--��������ĸ���»��߿�ͷ

create database student

create table abc
(


--test1 char(100)
 sal numeric(10,2), --��ʾ10λ��С��Ϊ2λ


)

insert  into abc values(1.211);

select  *from abc
drop table abc
--uincode���������ֽڱ�ʾһ���ַ���������Ӣ�ģ����֣�
--��uincode����һ���ֽڱ�ʾ��ĸ��������ʾ����


--varchar�����Զ�����ռ�
--Ϊʲô��Ҫ��char
--�������������char  ȷ�������ݳ���
--������ѯ�����ȽϿ�

--ntextΪ�ɱ䳤�ȵ�Uincode���룬2��30�η�-1

--textΪ�ɱ䳤�ȷ�unicode���룬2��31�η�-1

--������
-- bit  0---1  ����1�Զ�ת��
-- int  2��-31�η���2��31�η�
-- bigint  2��-63��2��63�η�
--  numeric  С��  ������С���Ƽ�

--sql server Ϊ�����ṩ��ר�ŵ�ʱ�亯��
--getdate

create table abc
(


--test1 char(100)
-- sal numeric(10,2), --��ʾ10λ��С��Ϊ2λ
bir datetime --����
)

insert  into abc values(GETDATE());

--image ���ͼƬ
--binary �ֶο�����Ƶ