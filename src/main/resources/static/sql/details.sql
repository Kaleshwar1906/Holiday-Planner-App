create database holiday;

use holiday;

create table city(
name varchar(255),
days int,
href varchar(255),
imgsrc varchar(255)
);

insert into city(name, days, href, imgsrc)
values
('allepey',	2,'allepey', 'images/cities/allepey.jpg'),
('goa',	3,	'goa'	,'images/cities/goa.jpg'),
('kannyakumari',	3	,'kannyakumari'	,'images/cities/kannyakumari.jpg'),
('madurai',	2,	'madurai'	,'images/cities/madurai.jpg'),
('manali',	3	,'manali'	,'images/cities/manali.jpg'),
('ooty'	,2,	'ooty',	'images/cities/ooty.jpg');


create table city_distance(
from_city varchar(255),
to_city varchar(255),
distance int ,
travel_time int
);

insert into city_distance(from_city, to_city, distance,travel_time) 
values
("kannyakumari", 'ooty',515,11),
("kannyakumari", 'madurai',245,5),
("kannyakumari", 'goa',1230,23),
("kannyakumari", 'manali',3360,61),
("kannyakumari", 'allepey',250,6),
("ooty", 'kannyakumari',515,11),
("ooty", 'madurai',290,7),
("ooty", 'goa',619,16),
("ooty", 'manali',2970,55),
("ooty", 'allepey',320,8),
("madurai", 'kannyakumari',245,5),
("madurai", 'ooty',290,7),
("madurai", 'goa',1000,19),
("madurai", 'manali',3150,57),
("madurai", 'allepey',280,7),
("goa", 'kannyakumari',1233,23),
("goa", 'ooty',690,16),
("goa", 'madurai',1000,19),
("goa", 'manali',2500,47),
("goa", 'allepey',800,18),
("manali", 'kannyakumari',3350,61),
("manali", 'ooty',3000,54),
("manali", 'madurai',3200,57),
("manali", 'goa',2500,47),
("manali", 'allepey',3300,60),
("allepey", 'kannyakumari',240,6),
("allepey", 'ooty',320,8),
("allepey", 'madurai',280,7),
("allepey", 'goa',800,18),
("allepey", 'manali',3300,60);

