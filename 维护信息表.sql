use WuLiu;
create table maintenance(
ID int primary key not null identity(1,1),
Name varchar(50) not null,
Content varchar(1000) null,
CDate datetime null,
AuditStatus bit not null,
foreign key (Name) references EUser(Name),
foreign key (Name) references PUser(Name)
)