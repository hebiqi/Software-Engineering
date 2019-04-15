create database WuLiu
on primary
(
name='WuLiu_data',
filename='E:\WuLiu\WuLiu_data.mdf',
size=10MB,
maxsize=100MB,
filegrowth=1
)
LOG ON
(
name='WuLiu_log',
filename='E:\WuLiu\WuLiu_log.ldf',
size=4MB,
filegrowth=10%
)
GO