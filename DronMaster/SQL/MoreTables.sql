use Droidika;

create table dAdministrators
(
	id int identity(1,1) primary key,
	email varchar(50) not null,
	fstName varchar(30) not null,
	lstName varchar(30) not null,
	password  varchar(12) not null
)

insert into dAdministrators values('faudirac@cartodata.com', 'Felix', 'Audirac', 'faudirac');
insert into dAdministrators values('jaime@droidika.com', 'Jaime', 'Machuca', 'jmachuca');
insert into dAdministrators values('mflores@solutiaintelligence.com', 'Miguel', 'Flores', 'mflores');

select * from dAdministrators;

create table dCertificates
(
	id int identity(1,1) primary key,
	emailPilot varchar(50) not null,
	emailAdmin varchar(30) not null,
	dateCertificate datetime not null,
	URLCertificate varchar(50) not null
)

