use WuLiu;
create table Freight(
ID int primary key not null identity(1,1),
Name varchar(50) not null,
Start varchar(50) not null,
Terminal varchar(50) not null,
FreightType varchar(50) not null,
FreightWeight int null,
WeightUnit char(50) null default '1KG',
Linkman varchar(50) not null,
Phone varchar(50) not null,
Edate datetime not null,
Edit varchar(1000) null,
Cdate datetime not null,
Auditing bit not null,
foreign key(Name) references EUser(Name),
foreign key(Name) references PUser(Name)
)