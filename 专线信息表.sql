use WuLiu;
create table Special(
ID int primary key not null identity(1,1),
Name varchar(50) not null,
Start varchar(50) null,
Terminal varchar(50) null,
Way varchar(200) null,
TrunkType varchar(100) null,
Number varchar(100) null,
TrunkLoad varchar(50) null,
Price varchar(50) null,
Linkman varchar(50) null,
Phone varchar(50) null,
Edate datetime not null,
Cdate datetime not null,
Edit varchar(1000) null,
Auditing bit not null,
FID int null references Freight(ID),
TID int null references Trunk(ID),
DID int null references Depot(ID),
foreign key(Name) references EUser(Name),
foreign key(Name) references PUser(Name)
)