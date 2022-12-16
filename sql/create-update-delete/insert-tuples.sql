/*
   insert tuples into apartment complex database
*/

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (1, 3, 'Sunny', 500000, 1992);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (2, 4, 'Shady', 600000, 1993);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (3, 2, 'Shorty', 300000, 1994);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (4, 5, 'Tower', 700000, 1995);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (5, 4, 'Grassy', 450000, 1997);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (6, 6, 'New Hotness', 800000, 2002);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (7, 7, 'Shiny', 900000, 2003);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (8, 6, 'Blue', 850000, 2004);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (9, 5, 'Red', 750000, 2019);

insert into Building (Bld_Number, Floors, Nickname, Value, Construction_Year)
values (10, 8, 'Skyscraper', 1000000, 2020);

insert into New_Building (Bld_Number, Permit_Number)
values (6, 3242);

insert into New_Building (Bld_Number, Permit_Number)
values (7, 1518);

insert into New_Building (Bld_Number, Permit_Number)
values (8, 9815);

insert into New_Building (Bld_Number, Permit_Number)
values (9, 7681);

insert into New_Building (Bld_Number, Permit_Number)
values (10, 3184);

insert into Renovated_Building (Bld_Number, Renovated_Year)
values (1, 2007);

insert into Renovated_Building (Bld_Number, Renovated_Year)
values (2, 2008);

insert into Renovated_Building (Bld_Number, Renovated_Year)
values (3, 2009);

insert into Renovated_Building (Bld_Number, Renovated_Year)
values (4, 2010);

insert into Renovated_Building (Bld_Number, Renovated_Year)
values (5, 2011);

insert into Inspection (ID_Number, First_Name, Last_Name, Inspection_Date, Bld_Number, Comments, Result)
values (151, 'James', 'Fletcher', date '2012-10-11', 1, 'Looks great!', 'Passed');

insert into Inspection (ID_Number, First_Name, Last_Name, Inspection_Date, Bld_Number, Comments, Result)
values (510, 'Bob', 'Ryan', date '2013-08-11', 2, 'Looks bad!', 'Failed');

insert into Inspection (ID_Number, First_Name, Last_Name, Inspection_Date, Bld_Number, Comments, Result)
values (514, 'Alice', 'Smith', date '2014-06-15', 2, 'Looks better!', 'Passed');

insert into Inspection (ID_Number, First_Name, Last_Name, Inspection_Date, Bld_Number, Comments, Result)
values (333, 'Frustrum', 'Halibaster', date '2015-07-15', 7, 'Needs work!', 'Failed');

insert into Inspection (ID_Number, First_Name, Last_Name, Inspection_Date, Bld_Number, Comments, Result)
values (555, 'Sergei', 'Stanislav', date '2016-09-14', 9, 'Not up to code!', 'Failed');

insert into Floor_Plan (Letter, Bedrooms, Bathrooms, Square_Feet, Base_Price)
values ('A', 2, 2, 900, 750);

insert into Floor_Plan (Letter, Bedrooms, Bathrooms, Square_Feet, Base_Price)
values ('A', 3, 2, 1200, 950);

insert into Floor_Plan (Letter, Bedrooms, Bathrooms, Square_Feet, Base_Price)
values ('B', 1, 1, 550, 550);

insert into Floor_Plan (Letter, Bedrooms, Bathrooms, Square_Feet, Base_Price)
values ('B', 2, 1, 700, 650);

insert into Floor_Plan (Letter, Bedrooms, Bathrooms, Square_Feet, Base_Price)
values ('C', 4, 3, 1500, 1100);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (311, 1, 'North', 'Birch', 'Flowers', 'White','Gray', 'Black', 'A', 2);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (212, 1, 'West', 'Oak', 'Striped', 'White','Tan', 'Gray', 'A', 3);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (411, 2, 'East', 'Birch', 'Circles', 'White','Gray', 'Black', 'B', 1);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (114, 3, 'South', 'Yew', 'Popcorn', 'Gray','Tan', 'Black', 'C', 4);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (515, 4, 'West', 'Oak', 'Column', 'White','Gray', 'Black', 'B', 2);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (412, 4, 'West', 'Birch', 'Circles', 'Gray','White', 'Black', 'C', 4);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (315, 5, 'East', 'Yew', 'Striped', 'Gray','Gray', 'Black', 'A', 3);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (611, 6, 'North', 'Cedar', 'Diamond', 'White','Gray', 'Black', 'A', 3);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (711, 7, 'East', 'Ash', 'Wood', 'White','Gray', 'Black', 'B', 2);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (812, 10, 'South', 'Oak', 'Pattern', 'Yellow', 'Gray', 'Black', 'C', 4);

insert into Apartment (Apt_Number, Bld_Number, Direction_Facing, Wood_Type, Wallpaper_Style, Bathroom_Color, Carpet_Color, Appliance_Color, Letter, Bedrooms)
values (311, 9, 'West', 'Yew', 'Wistful', 'White', 'Black', 'Gray', 'B', 1);

insert into Special_Features (Apt_Number, Bld_Number, Special_Features)
values (515, 4, 'balcony');

insert into Special_Features (Apt_Number, Bld_Number, Special_Features)
values (611, 6, 'fireplace');

insert into Special_Features (Apt_Number, Bld_Number, Special_Features)
values (611, 6, 'poolside');

insert into Special_Features (Apt_Number, Bld_Number, Special_Features)
values (315, 5, 'balcony');

insert into Special_Features (Apt_Number, Bld_Number, Special_Features)
values (711, 7, 'parking spot');

insert into Special_Features (Apt_Number, Bld_Number, Special_Features)
values (711, 7, 'poolside');

insert into Tenant (First_Name, Middle_Initial, Last_Name, Bld_Number, Apt_Number, Credit_Score, Income)
values ('Danni', 'M', 'French', 4, 515, 800, 2400);

insert into Tenant (First_Name, Middle_Initial, Last_Name, Bld_Number, Apt_Number, Credit_Score, Income)
values ('Issa', 'J', 'Valence', 7, 711, 777, 3000);

insert into Tenant (First_Name, Middle_Initial, Last_Name, Bld_Number, Apt_Number, Credit_Score, Income)
values ('Gilbert', 'L', 'Robins', 3, 114, 676, 2700);

insert into Tenant (First_Name, Middle_Initial, Last_Name, Bld_Number, Apt_Number, Credit_Score, Income)
values ('Adam', 'R', 'Frank', 1, 311, 550, 3300);

insert into Tenant (First_Name, Middle_Initial, Last_Name, Bld_Number, Apt_Number, Credit_Score, Income)
values ('Alfred', 'O', 'Marin', 4, 515, 600, 1200);

insert into Tenant (First_Name, Middle_Initial, Last_Name, Bld_Number, Apt_Number, Credit_Score, Income)
values ('Jaylen', 'X', 'Bennett', 4, 412, 820, 4000);

insert into References (First_Name, Middle_Initial, Last_Name, Reference)
values ('Jaylen', 'X', 'Bennett', 'Rock 4245551000'); 

insert into References (First_Name, Middle_Initial, Last_Name, Reference)
values ('Jaylen', 'X', 'Bennett', 'Drew 5685556840'); 

insert into References (First_Name, Middle_Initial, Last_Name, Reference)
values ('Gilbert', 'L', 'Robins', 'Crosby 8795554651'); 

insert into References (First_Name, Middle_Initial, Last_Name, Reference)
values ('Issa', 'J', 'Valence', 'Ruiz 6481159191'); 

insert into References (First_Name, Middle_Initial, Last_Name, Reference)
values ('Adam', 'R', 'Frank', 'Hayward 6489414948'); 

commit;