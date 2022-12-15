/*
   create tables and views for apartment complex database
*/

create table Building (
  Bld_Number number(2),
  Floors number(2) not null,
  Nickname varchar2(20) null,
  Value number(10) not null,
  Construction_Year number(4) not null,
  primary key (Bld_Number)
);

create table New_Building (
  Bld_Number number(2),
  Permit_Number number not null,
  primary key (Bld_Number),
  foreign key (Bld_Number) references Building on delete cascade
);
  
create table Renovated_Building (
  Bld_Number number(2),
  Renovated_Year number(4) not null,
  primary key (Bld_Number),
  foreign key (Bld_Number) references Building on delete cascade
);

create table Inspection (
  ID_Number number,
  First_Name varchar2(8) not null,
  Last_Name varchar2(12) not null,
  Inspection_Date date not null,
  Bld_Number number(3) not null,
  Comments varchar2(15),
  Result varchar2(6) not null,
  primary key (ID_Number),
  foreign key (Bld_Number) references Building
);

create table Floor_Plan (
  Letter char(1),
  Bedrooms number(1),
  Bathrooms number(1) not null,
  Square_Feet number(5) not null,
  Base_Price number(5) not null,
  primary key (Letter, Bedrooms)
);

create table Apartment (
  Apt_Number number(3),
  Bld_Number number(2),
  Direction_Facing varchar2(5) not null,
  Wood_Type varchar2(8) not null,
  Wallpaper_Style varchar2(8) not null,
  Bathroom_Color varchar2(8) not null,
  Carpet_Color varchar2(8) not null,
  Appliance_Color varchar2(8) not null,
  Letter char(1) not null,
  Bedrooms number(1) not null,
  primary key (Apt_Number, Bld_Number),
  foreign key (Bld_Number) references Building,
  foreign key (Letter, Bedrooms) references Floor_Plan
);

create table Special_Features (
  Apt_Number number(3),
  Bld_Number number(2),
  Special_Features varchar2(20),
  primary key (Apt_Number, Bld_Number, Special_Features),
  foreign key (Apt_Number, Bld_Number) references Apartment on delete cascade
);

create table Tenant (
  First_Name varchar2(8),
  Middle_Initial char(1),
  Last_Name varchar2(12),
  Bld_Number number(2) not null,
  Apt_Number number(3) not null,
  Credit_Score number(3) not null,
  Income number(6) not null,
  primary key (First_Name, Last_Name, Middle_Initial),
  foreign key (Apt_Number, Bld_Number) references Apartment,
  check (Credit_Score between 300 and 850)
);

create table References (
  First_Name varchar2(8),
  Middle_Initial char(1),
  Last_Name varchar2(12),
  Reference varchar2(20),
  primary key (First_Name, Last_Name, Middle_Initial, Reference),
  foreign key (First_Name, Last_Name, Middle_Initial) references Tenant on delete cascade
);

create view open as
	select f.* 
	from apartment f left join tenant s 
	on f.bld_number = s.bld_number 
	where s.bld_number is null;

create view open1 as
	select bld_number, count(bld_number) open
	from building natural join open 
	group by bld_number;

create view oldbuildings as 
  select * 
  from building natural join renovated_building;

create view oldbuildings1 as 
  select bld_number, sum(square_feet) total_area 
  from apartment natural join floor_plan natural join oldbuildings 
  group by bld_number;

create view features as 
  select apt_number, count(apt_number) number_features 
  from open natural join floor_plan natural join special_features 
  group by apt_number;

create view balcony as 
  select apt_number, count(apt_number) tenants 
  from apartment natural join special_features natural join tenant natural join floor_plan 
  where special_features like 'balcony' 
  group by apt_number;

create view features1 as 
  select apt_number, count(apt_number) number_features 
  from apartment natural join floor_plan natural join special_features 
  group by apt_number;

create view mostreferences as 
  select first_name, middle_initial, last_name, count(*) number_ref 
  from tenant natural join references 
  group by first_name, middle_initial, last_name;

create view noref as 
  select t.* 
  from tenant t left join references r on t.last_name = r.last_name 
  where r.reference is null;

create view openold as 
  select * 
  from building natural join open1 natural join renovated_building natural join apartment 
  where renovated_year < (select extract(year from sysdate) - 2 from dual);

commit;