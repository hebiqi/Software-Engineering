use WuLiu;
create table Admin(
ID int primary key not null identity(1,1),
Name varchar(50) not null unique,
Password varchar(50) not null
)