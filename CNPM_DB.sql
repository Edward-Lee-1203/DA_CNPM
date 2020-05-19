use DA_CNPM
create table UserTb
(
	userId int primary key,
	userName nvarchar(255),
	passwordUser nvarchar(50),
	fullName nvarchar(255),
	dateOfBirth date,
	gender bit,
	addressUser nvarchar(255),
	phoneNumber nvarchar(11),
	creditPoint nvarchar(20)
)
GO 
create table ServiceTb
(
	serviceId int primary key,
	serviceName nvarchar(255),
	price int,
	regulation nvarchar(500)
)
GO
create table PartnerTb
(
	partnerId int primary key,
	activePlace nvarchar(255),
	review nvarchar(500),
	addressPartner nvarchar(255),
	phoneNumber nvarchar(11),
	activeTime nvarchar(255),
)
GO
create table BillTb
(
	billId int primary key,
	timeBill date,
	totalPrice int,
	serviceId int,
	partnerId int,
	userId int,
	foreign key (serviceId) references ServiceTb(serviceId),
	foreign key (partnerId) references PartnerTb(partnerId),
	foreign key (userId) references UserTb(userId),
)
create table ServiceOfPartnerTb
(
	serviceOfPartnerId int primary key,	totalPrice int,
	serviceId int,
	partnerId int,
	foreign key (serviceId) references ServiceTb(serviceId),
	foreign key (partnerId) references PartnerTb(partnerId),
)

use DA_CNPM

insert into UserTb values(1, 'thuanmapqn', '120300', 'Lê Xuân Thuân', '2000-03-12', 1, 'K64 Trân Đinh Tri', '0889709099', '21233434255')
insert into UserTb values(2, 'thuanmapqn1', '120300', 'Lê Xuân Thu', '2000-03-12', 1, 'K64 Trân Đinh Tri', '0889709099', '21233434255')
insert into UserTb values(3, 'thuanmapqn2', '120300', 'Nguyên Văn A', '2000-03-12', 1, 'K64 Trân Đinh Tri', '0889709099', '21233434255')
insert into UserTb values(4, 'thuanmapqn3', '120300', 'Lê Văn B', '2000-03-12', 1, 'K64 Trân Đinh Tri', '0889709099', '21233434255')
insert into UserTb values(5, 'thuanmapqn4', '120300', 'Lê Xuân C', '2000-03-12', 1, 'K64 Trân Đinh Tri', '0889709099', '21233434255')

