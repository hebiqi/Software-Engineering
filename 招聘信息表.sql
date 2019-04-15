use WuLiu;
create table Recruit(
ID int primary key not null identity(1,1),
Position varchar(50) null,
Number int null,
Sex char(10) null,
Age char(10) null,
Education varchar(50) null,
Major varchar(50) null,
Experience varchar(50) null,
Place varchar(50) null,
Salary char(10) null,
Info varchar(2000) null,
Cdate datetime null,
Name varchar(50) not null,
Auditing bit null,
foreign key (Name) references EUser(Name),
foreign key (Name) references PUser(Name)
)