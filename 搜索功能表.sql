use WuLiu;
create table Search(
ID int primary key not null identity(1,1),
SearchType varchar(50) null,
Type varchar(50) null,
SearchKey varchar(50) null,
Keyword varchar(50) null
)