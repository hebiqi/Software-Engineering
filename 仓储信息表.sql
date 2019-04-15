use WuLiu;
create table Depot(
ID int primary key not null identity(1,1),
Name varchar(50) not null,
DepotType varchar(50) not null,
DepotCity varchar(50) not null,
DepotPlace varchar(50) null,
DepotAcreage int not null,
DepotSum int null,
DepotPrice int null,
Linkman varchar(50) not null,
Phone varchar(50) not null,
Cdate datetime not null,
Edate datetime not null,
Auditing bit not null,
Information varchar(1000) null,
foreign key(Name) references EUser(Name),
foreign key(Name) references PUser(Name)
)