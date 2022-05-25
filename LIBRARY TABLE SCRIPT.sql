use library;

use library;
create table Book (
bookID int Not Null,
bookName varchar(50) Not Null,
bookAuthor varchar(60) Not Null, 
constraint Book_pk Primary Key(bookID)
  );

create table `User` (
userID int Not Null,
userName varchar(30) Not Null,
phoneNumber varchar(20) Not Null,
emailAddress varchar(30) Not Null,
homeAddress varchar(30) Not Null,
constraint User_pk Primary Key(userID)
);


create table Staff (
 StaffId            Integer            NOT NULL,
 FullName           varchar(40)        NOT NULL,
 EmailAddress       varchar(45)        NOT NULL,
 PhoneNumber		varchar(45)           NOT NULL,
 Address            varchar(45)        NOT NULL,
 Job                varchar(45)        NOT NULL,
 constraint         Staff_Id_PK        primary key(StaffId)
);


create table Book_On_Loan  (
loanId             Integer                NOT NULL,
DateCollected    date                 NOT NULL,
DateReturned     varchar(35)              NOT NULL,
userId           Integer                  NOT NULL,
StaffId          Integer                  NOT NULL,
bookId           Integer                  NOT NULL,
constraint      BookOnLoan_PK         PRIMARY KEY(loanId),
constraint     BookOnLoan_user_FK         foreign key(userId)
                  references          user(userId),
constraint      BookOnLoan_staff_FK   foreign key(staffId)
                  references          Staff(staffId),
constraint      BookOnLoan_book_FK    foreign key(bookId)
                  references          book(bookId)
); 