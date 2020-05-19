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
	partnerId int,
	userId int,
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

insert into PartnerTb values(1, 'best', 'K64 Trân Đinh Tri', '0889304834','12am - 18pm')
insert into PartnerTb values(2, 'best', 'K64 Trân Đinh Tri', '0889304834','12am - 18pm')
insert into PartnerTb values(3, 'best', 'K64 Trân Đinh Tri', '0889304834','12am - 18pm')
insert into PartnerTb values(4, 'best', 'K64 Trân Đinh Tri', '0889304834','12am - 18pm')
insert into PartnerTb values(5, 'best', 'K64 Trân Đinh Tri', '0889304834','12am - 18pm')

insert into ServiceTb values(1, 'Sưa xe', 100000, 'Thay lôp , va lôp, chêt may')
insert into ServiceTb values(2, 'Hêt xăng', 100000, 'Mua xăng, dăt xe')
insert into ServiceTb values(3, 'Hêt binh', 100000, 'Sac binh, thay binh')

insert into BillTb values(1, '2020-05-19', 100000, 3, 2)
insert into BillTb values(2, '2020-03-12', 100000, 5, 5)
insert into BillTb values(3, '2020-01-01', 100000, 3, 3)

insert into ServiceOfPartnerTb values(1, 100000, 1, 1)
insert into ServiceOfPartnerTb values(2, 100000, 1, 2)
insert into ServiceOfPartnerTb values(3, 100000, 1, 3)
insert into ServiceOfPartnerTb values(4, 100000, 2, 1)
insert into ServiceOfPartnerTb values(5, 100000, 2, 2)
insert into ServiceOfPartnerTb values(6, 100000, 3, 3)






