create table Users
(
userId int not null primary key identity(1,1),
userName varchar(150) not null,
userEmail varchar(250) not null,
userPass varchar(250) not null,
userCountry varchar(150) not null,
userRole varchar(150) not null
)
create table Categories
(
catId int not null primary key identity(1,1),
catName varchar(150)
)
create table Posts
(
postId int not null primary key identity(1,1),
postTitle varchar(250) not null,
postDesc varchar(250) not null,
catId int foreign key references Categories(catId),
userId int foreign key references Users(userId),
postUrl varchar(150)
)
create table Comments
(
commentId int primary key identity(1,1),
commentDesc varchar(233),
userId int foreign key references Users(userId),
postId int foreign key references Posts(postId)
)

select * from Comments
select * from Users
select * from Posts

select * from Categories
select * from Posts