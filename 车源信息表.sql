use WuLiu;
create table Trunk(
ID int primary key not null identity(1,1),
Name varchar(50) not null,
TrunkType varchar(50) null,
TrunkLong char(50) null,
TrunkLoad char(50) null,
Number char(100) null,
Linkman varchar(50) null,
Phone varchar(50) null,
Cdate datetime not null,
Remarks varchar(1000) null,
Auditing bit null,
foreign key (Name) references EUser(Name),
foreign key (Name) references PUser(Name)
)