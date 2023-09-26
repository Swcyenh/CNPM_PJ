Create database QL2;
Use QL2;
set dateformat DMY;

Create table ItemInfo
(
	ItemID nchar(10) Primary Key,
	ItemName nvarchar(50),
	Size int,
  Color nvarchar(20),
  StockQuantity int,
	Price int,
  MoreInfo nvarchar(4000)
);

Create table ListOfItemInCart 
(
	UserID nchar(10) Primary key,
  CartId nchar(10) ,
  constraint L_CartId_FK FOREIGN KEY (CartId) REFERENCES CartDetails(CartId)
);

Create table CartDetails
(
	CartId nchar(10),
	ItemID nchar(10),
	constraint CartDetails primary key (CartID, ItemID)
);


Create table UserProfile
(
  UserID nchar(10) primary key,
	FullName nvarchar(50),
  Gender nchar(3) ,
  DataOfBirth datetime,
  PhoneNumber int,
  constraint U_UserID_FK FOREIGN KEY (UserID) REFERENCES ListOfItemInCart(UserID),
  constraint U_Gender_CK CHECK (Gender IN ('Nam', 'Nữ'))
);

Create table Account
(
	UserID nchar(10) Primary key ,
  PassWorkID char(16),
  constraint A_UserID_FK FOREIGN KEY (UserID) REFERENCES UserProfile(UserID)
);

Create table Invoice
(
	InvoiceID int Primary Key, 
    UserID nchar(10) ,
    Total int,
    DateOfInvoice datetime, 
    constraint I_UserID_FK FOREIGN KEY (UserID) REFERENCES UserProfile(UserID)
);

Create table InvoiceDetails
(
	InvoiceID int Primary Key , 
	ItemID nchar(10) ,
	Quantity int,
    Price int,
  constraint ID_InvoiceID_FK FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID),
  constraint I_ItemID_FK FOREIGN KEY (ItemID) REFERENCES ItemInfo(ItemID)
);

Insert into ItemInfo (ItemID, ItemName, Size, Color, StockQuantity, Price, MoreInfo)
Values 
('TT001W35', N'Sneaker Angelic Garden', 35, N'White', 234, 499000, NULL),
('TT001W36', N'Sneaker Angelic Garden', 36, N'White', 231, 499000, NULL),
('TT001W37', N'Sneaker Angelic Garden', 37, N'White', 345, 499000, NULL),
('TT001W38', N'Sneaker Angelic Garden', 38, N'White', 122, 499000, NULL),
('TT001W39', N'Sneaker Angelic Garden', 39, N'White', 343, 499000, NULL),
('TT001B35', N'Sneaker Angelic Garden', 35, N'Black', 544, 499000, NULL),
('TT001B36', N'Sneaker Angelic Garden', 36, N'Black', 323, 499000, NULL),
('TT001B37', N'Sneaker Angelic Garden', 37, N'Black', 213, 499000, NULL),
('TT001B38', N'Sneaker Angelic Garden', 38, N'Black', 563, 499000, NULL),
('TT001B39', N'Sneaker Angelic Garden', 39, N'Black', 434, 499000, NULL)

Insert into UserProfile 
values
('0778931232', N'Phạm Ánh Tuyết', 'Nữ', 09/12/1999, 0778931232),
('0754938432', N'Nghiêm Lục Bình', 'Nữ', '3/5/1995', 0754938432),
('0159487402', N'Khà Tường Lâm', 'Nữ', '11/10/1997', 0159487402),
('0035552941', N'Liên Kim Thy', 'Nữ', '11/7/2000', 0035552941),
('0879369172', N'Cổ Diễm Chi', 'Nữ', '4/11/1999', 0879369172),
('0902654690', N'Cảnh Hạc Cúc', 'Nữ', '13/2/1983', 0902654690),
('0027782257', N'Quảng Tường Vy', 'Nữ', '9/10/1994', 0027782257),
('0264662609', N'Giáp Yên Mai', 'Nữ', '5/11/1992', 0264662609),
('0360844373', N'Tôn Thất Thúy Diễm', 'Nữ', '14/9/2001', 0360844373),
('0734247838', N'Viên Minh Ngọc', 'Nữ', '22/10/1998', 0734247838)

-------------------------------------------------------------------------
Insert into Account
values
('0778931232', 'xvP7LnGtWw9XhOM'),
('0754938432', 'fAftsocYCdoqvKM'),
('0159487402', 'vDsZjww91NSbqqn'),
('0035552941', 'zDBsOrXcmRm4Zdn'),
('0879369172', 'rdNpFnj0uBvAGjU'),
('0902654690', 'qctu9GMPqKNnvNr'),
('0027782257', 'todetOZCoBPHdRg'),
('0264662609', 'T5HPfGAwIEYzTTO'),
('0360844373', 'QwmvfhXgGTI0V0K'),
('0734247838', 'sp2VuqE4Oo39MXK')
------------------------------------------------

Insert into ListOfItemInCart
values
('0778931232', 'C1'),
('0754938432', 'C2'),
('0159487402', 'C3'),
('0035552941', 'C4'),
('0879369172', 'C5'),
('0902654690', 'C6'),
('0027782257', 'C7'),
('0264662609', 'C8'),
('0360844373', 'C9'),
('0734247838', 'C10')

--UserID is primary, nhưng mà 1 UserID có thể có nhiều ItemID trong cart mà?
Insert into CartDetails
values  
('C1', 'TT001W35'),
('C1', 'TT001W36')
------------------------------------------------------------------------------
Insert into Invoice
values
(00001, '0778931232', 499000, '21/08/2023'),
(00002, '0754938432', 499000, '21/08/2023'),
(00003, '0159487402', 499000, '22/08/2023'),
(00004, '0035552941', 499000, '23/08/2023'),
(00005, '0879369172', 499000, '23/08/2023')
-------------------------------------------------------
Insert into InvoiceDetails
values
(00001, 'TT001W35',1,499000),
(00002, 'TT001W36',2,499000),
(00003, 'TT001W37',1,499000),
(00004, 'TT001W38',2,499000),
(00005, 'TT001W39',1,499000)