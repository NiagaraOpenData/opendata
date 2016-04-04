--These SQL commands can be used to create a database in MySQL in a terminal environment. This database is for managing information about places that you can go to give or receive donated goods.
--The original purpose was to manage food banks, but this concept has been diversified to include other goods as well.
--Simply copy and paste each command into MySQL and you should have an empty database before you know it!
--There are 4 tables: organization, branch, service, visit.

--organization
INSERT INTO organization VALUES
("", 'W'),
("Salvation Army", 'W'),
("Catholic Church", 'W'),
("Community Care", 'P'),
("The Inter-Church Food Bank", 'W');

--branch
INSERT INTO branch VALUES
(1, "", "Community Outreach Program Erie", "32 Dufferin Street", "", "FE4", "Fort Erie", -78.9170300712181, 42.9309333635013),
(2, "Salvation Army", "Fort Erie", "255 Gilmore Road", "", "FE4", "Fort Erie", -78.9170300712181, 42.9309333635013),
(3, "", "Grimsby Benevolent Fund", "21 Main Street East", "", "GR7", "Grimsby", -79.5597881545987, 42.1929391030319),
(4, "Community Care", "West Niagara", "4309 Central Avenue", "", "LN1", "Lincoln", -79.4745213904439, 43.1659500089687),
(5, "", "Project Share", "4129 Stanley Avenue", "Unit 2", "NF2", "Niagara Falls", -79.0866175554524, 43.1138400848432),
(6, "Salvation Army", "Niagara Falls", "5720 Dorchester Road", "", "NF3", "Niagara Falls", -79.1102234, 43.0912888),
(7, "", "Newark Neighbours", "310 John Street East", "", "NOTL1", "Niagara-on-the-Lake", -79.0625890321707, 43.2399507434819),
(8, "The Inter-Church Food Bank", "Port Colbourne and District", "296 Fielden Avenue", "", "PC1", "Port Colbourne", -79.2581899410538, 42.8879721724699),
(9, "", "Pelham Cares", "2 Pelham Town Square", "Unit 101", "PE2", "Pelham", -79.2838335392592, 43.0449944145166),
(10, "Community Care", "St. Catharines", "12 North Street", "", "ST10", "St. Catharines", -79.2433304514004, 43.1636135087845),
(11, "Salvation Army", "Community Services", "400 Niagara Street", "", "ST13", "St. Catharines", -79.22462745451, 43.187192373435),
(12, "Salvation Army", "St. Catharines", "406 Niagara Street", "", "ST13", "St. Catharines", -79.2253962722599, 43.1873348702327),
(13, "Community Care", "Thorold", "19 Albert Street West", "", "TH2", "Thorold", -79.2026140753297, 43.1246230987293),
(14, "", "The Hope Centre", "570 King Street", "", "WD4", "Welland", -79.2505743266366, 42.9785653302314),
(15, "Salvation Army", "Welland", "115 Division Street", "", "WD3", "Welland", -79.2473243779984, 42.9909031296638),
(16, "", "Open Arms Mission Welland", "22 Fifth Street", "", "WD4", "Welland", -79.2521507404274, 42.9789051831979),
(17, "", "West Lincoln Community Centre", "2660 Industrial Park Road West", "Unit 5", "WL1", "Welland", -79.5368421847085, 43.099129941905),
(18, "", "Port Cares Reach Out Centre", "61 Nickel Street", "", "PC2", "Port Colbourne", -79.2439612004721, 42.8829991609778),
(19, "", "First Baptist Church", "42 Oromond Street South", "", "TH2", "Thorold", -79.1984566358585, 43.1217787888203),
(20, "", "Grace United Brethren Church", "895 Empire Road", "", "PC4", "Port Colbourne", -79.134108158205, 42.8883632129053),
(21, "", "Holy Trinity Anglican Church", "77 Division Street", "", "WD3", "Welland", -79.2483138674813, 42.9908084500139),
(22, "", "Life Together Church", "202 Pelham Road", "", "ST5", "St. Catharines", -79.2544443639362, 43.1343309323296),
(23, "", "Open Arms of Jesus Outreach Ministry", "198 Queenston Street", "", "ST9", "St. Catharines", -79.2259316420191, 43.1616610411665),
(24, "Salvation Army", "Port Colbourne", "50 Clarence Street", "", "PC1", "Port Colbourne", -79.2519663901128, 42.8860305547045),
(25, "Catholic Church", "St. George", "56 Ridgeway Road", "", "FE2", "Fort Erie", -79.0583097027933, 42.8742783156258),
(26, "Catholic Church", "St. Michael's Hall", "310 Central Avenue", "", "Fort Erie Lakeshore", "Fort Erie" , -78.9182993456004, 42.919103501911);

--service
INSERT INTO service VALUES
(1, 'F', "Food Bank"),
(2, 'D', "Food Co-Op"),
(3, 'F', "Free Meal Program"),
(4, 'F', "Meals on Wheels"),
(5, 'F', "Out of the Cold"),
(6, 'F', "Student Nutrition Program"),
(7, 'N', "Farmer's Market"),
(8, 'D', "Grocery Store"),
(9, 'D', "Supermarket"),
(10, 'F', "Books"),
(11, 'F', "School Supplies"),
(12, 'F', "Toys"),
(13, 'F', "Clothing"),
(14, 'F', "Winter Clothing"),
(15, 'F', "Toiletries"),
(16, 'D', "Furniture"),
(17, 'F', "Refurbished Equipment");

--visit
INSERT INTO visit VALUES
(1, 26, 3, 'B', "Any", '1', "Sat", "09:00:00", "12:00:00"),
(2, 26, 3, 'B', "Any", '3', "Sat", "09:00:00", "12:00:00"),
(3, 25, 3, 'B', "Any", '2', "Sat", "09:00:00", "12:00:00"),
(4, 25, 3, 'B', "Any", '4', "Sat", "09:00:00", "12:00:00"),
(5, 3, 1, 'G', "Any", '', "Mon", "12:00:00", "17:00:00"),
(6, 3, 1, 'G', "Any", '', "Wed", "12:00:00", "17:00:00"),
(7, 3, 1, 'R', "Any", '1', "Fri", "18:00:00", "22:00:00"),
(8, 4, 4, 'R', "Any", '', "Sun", "09:00:00", "14:00:00"),
(9, 2, 5, 'G', "Sep", '4', "Sun", "09:00:00", "17:00:00"),
(10, 2, 5, 'R', "Nov", '1', "Sun", "09:00:00", "17:00:00"),
(11, 12, 5, 'G', "Oct", '2', "Mon", "09:00:00", "17:00:00"),
(12, 12, 5, 'R', "Nov", '1', "Sat", "09:00:00", "17:00:00"),
(13, 15, 5, 'G', "Sep", '1', "Sat", "09:00:00", "17:00:00"),
(14, 15, 5, 'R', "Oct", '4', "Sat", "09:00:00", "17:00:00"),
(15, 5, 12, 'G', "Dec", '1', "Sat", "12:00:00", "16:00:00"),
(16, 5, 12, 'R', "Dec", '4', "Sat", "12:00:00", "16:00:00"),
(17, 9, 1, 'B', "Any", '2', "Thu", "18:00:00", "22:00:00"),
(18, 9, 1, 'B', "Any", '4', "Thu", "18:00:00", "22:00:00");