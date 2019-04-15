use WuLiu;
create table EUser(
ID int primary key not null identity(1,1),
Name varchar(50) not null unique,
Password varchar(50) not null,
Linkman varchar(50) null,
Phone varchar(50) null,
Company varchar(50) null unique,
Nature varchar(50) null,
industry varchar(50) null,
Licence varchar(50) null,
Address varchar(50) null,
Fax varchar(50) null,
Email varchar(50) null,
Website varchar(50) null,
Synopsis varchar(5000) null,
Lock bit null,
LockCause varchar(50) null
)
create table PUser(
ID int primary key not null identity(1,1),
Name varchar(50) not null unique,
Password varchar(50) not null,
Realname varchar(50) not null,
Phone varchar(50) null,
Email varchar(500) null,
Lock bit null,
LochCause varchar(500) null,
Company varchar(50) null references EUser(Company),
Position varchar(500) null,
Remarks varchar(1000)
)