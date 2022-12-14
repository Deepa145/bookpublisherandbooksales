create table book(
bookId number(30) not null,
bookName varchar(30) not null,
dateOfPublishing date not null,
category varchar(30) not null,
price number(30) not null,
stockInHand number(30) not null,
sales number(30) not null,
primary key (bookId));

select * from book;

insert into book(bookId,bookName,dateOfPublishing,category,price,stockInHand,sales) 
values(501,'Theentamil','09/08/2001','Tamil',100,10,1);

--------------------------------------------------------------------------------------
create table authors(authorId number(30)not null,
	authorName varchar(30) not null,
	authorAddress varchar(60) not null,
	phoneNumber number(20) not null,
	email varchar(30) not null,
	gender varchar(20) not null,
    primary key (authorId));
    
insert into authors(authorId,authorName,authorAddress,phoneNumber,email,gender) values(111,'Abdul Kalam',
'3/51A,Dhanush Kodi,Raameshwaram',8220489914,'Abdul@gmail.com','Male');

Select * from authors;

---------------------------------------------
    
create table shop(shopId number(30) not null,
	shopLocation varchar(50)not null,
	contactPerson varchar(30)not null,
	phonenumber number(30) not null,
     primary key (shopId));
     
     insert into shop(shopId,shopLocation,contactPerson,phoneNumber) values(1001,'Madurai','Gopika',6789054312);
     
     select * from shop;
-------------------------------------------------
     
     
create table authorbookdetails(
authorId number(30) not null,
	bookId number(30) not null,
	royalty	number(30) not null,
     primary key(authorId,bookId),
    foreign key (authorId) references authors(authorId),
    foreign key (bookId) references book(bookId));
    
    insert into authorbookdetails(authorId,bookId,royalty) values(111,501,'Excellent');
    insert into authorbookdetails(authorId,bookId,royalty) values(112,502,'Good');
    insert into authorbookdetails(authorId,bookId,royalty) values(112,501,'Very Good');
    
    select * from authorbookdetails;
    desc authorbookdetails;
    alter table authorbookdetails modify column royalty double not null;
    drop table authorbookdetails;
 ----------------------------------------   
create table orderedhistory(
	orderedId number(30) not null,
	status varchar(30) not null,
	shopId number(30) not null,
	orderedDate date not null,	
	totalAmount number(35) not null,
     primary key (orderedId),
      foreign key (shopId) references shop(shopId));
      
       insert into orderedhistory values(2001,'Delivered',1001,'07/08/2000',100);
      
      select * from orderedhistory;
  ---------------------------------------------    
      
 create table orderdetails(
	orderedId number(30) not null,
	bookId number(30) not null, 
	quantity number(30) not null,
	amount number(35) not null, 
    primary key(orderedId,bookId),
     foreign key (orderedId) references orderedhistory(orderedId),
      foreign key (bookId) references book(bookId));
      
      insert into orderdetails(orderedId,bookId,quantity,amount) values(2001,501,1,100);
      select * from orderdetails;
 ------------------------------------------------     

create table admin(userName varchar(30) not null,passWord varchar(30) not null);

insert into admin values('Deepa','Deepa@123');
select * from admin;
-----------------------------------------------------
COMMIT;
-------------------------------------------------
create sequence boid start with 501 increment by 1;
drop sequence boid;

create sequence auid start with 110 increment by 1;

create sequence shid start with 1000 increment by 1;

create sequence odid start with 2000 increment by 1;







