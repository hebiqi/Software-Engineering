use WuLiu;
create table News(
ID int primary key not null identity(1,1),
Title varchar(50) not null,
Content varchar(5000) null,
Name varchar(50) not null,
Cdate datetime not null,
Auditing bit null,
foreign key (Name) references EUser(Name),
foreign key (Name) references PUser(Name)
)