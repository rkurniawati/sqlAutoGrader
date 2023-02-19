USE K9U;

INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (1,'Ruth',NULL,'Kurniawati','577 Western Av','Westfield','MA','01086','4135725313');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (2,'Steve','G','Rogers','100 Captain St','Westfield','MA','01085','4135551234');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (3,'Carol','S','Danvers','51 Marvel Rd','Westfield','MA','01085','4135554040');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (4,'Wade','W','Wilson','3 Pool Dr','Westfield','MA','01085','4135556666');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (5,'Anthony','E','Stark','45 Industrial Dr','Springfield','MA','01107','4135557878');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (6,'Natalia','A','Romanova','90 Black Widow Ct','Springfield','MA','01107','4135557277');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (7,'Peter','B','Parker','234 Spider Hl','Springfield','MA','01103','4135559876');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (8,'Robert','B','Banner','93 Hulk Rd','Springfield','MA','01105','4135553333');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (9,'Thor',null,'Odinson','1 Asgard Blvd','West Springfield','MA','01089','4135559889');
INSERT INTO OWNER (OwnerID,FirstName,MiddleInitial,LastName,StreetAddress,City,State,ZIP,Phone) VALUES (10,'T''Challa',null, 'Wakanda','1000 Black Panther Ave','West Springfield','MA','01085','4135556676');

INSERT INTO DEPARTMENT (DeptID,DeptName) VALUES ('COMP','Competition and Show');
INSERT INTO DEPARTMENT (DeptID,DeptName) VALUES ('SERV','Service Careers');
INSERT INTO DEPARTMENT (DeptID,DeptName) VALUES ('MILP','Military and Police Careers');
INSERT INTO DEPARTMENT (DeptID,DeptName) VALUES ('FILM','Film and TV Careers');

INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('AGIL','Agility',2021,NULL,'Agility Competition major','COMP');
INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('SLED','Sled Dog',2022,NULL,'Sled Dog major','COMP');
INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('GUID','Guide Dog',2021,NULL,'Guide Dog for the Blind major','SERV');
INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('RESC','Search and Rescue',2020,NULL,'Search and Rescue major','SERV');
INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('SECU','Security',2020,NULL,'Police K9 and Airport Security major','MILP');
INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('DRUG','Drug Detection',2020,NULL,'Drug Detection major','MILP');
INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('BOMB','Bomb Detection',2022,NULL,'Bomb Detection major','MILP');
INSERT INTO MAJOR (MajorID,MajorName,StartYear,AccreditationInfo,Description,DeptID) VALUES ('SHOW','Showmanship',2021,NULL,'Dog Show major','COMP');

INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (1,'Bertie','Beagle',9,'M','SHOW',1);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (2,'Maddie','Beagle Pitbull Mix',4,'F','RESC',2);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (3,'Finn','Yellow Labrador Retriever',6,'M','RESC',2);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (4,'Ozzie','Beagle',12,'M','SHOW',3);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (5,'Elvis','Daschund',13,'M','RESC',3);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (6,'Peanut','Poodle',2,'M','SHOW',4);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (7,'Orion','Poodle',1,'M','SHOW',4);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (8,'Ivan','Siberian Husky',4,'F','SLED',4);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (9,'Karl','Daschund',1,'M','RESC',4);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (10,'Maddie','Yellow Labrador Retriever',13,'F','RESC',5);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (11,'Charlie','Black Labrador Retriever',2,'F','AGIL',5);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (12,'Savannah','Havanese',8,'F','GUID',6);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (13,'Ollie','Havanese',1,'M','SECU',7);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (14,'Maddie','Yellow Labrador Retriever',3,'F','SECU',8);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (15,'Alfie','Daschund',2,'M','DRUG',8);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (16,'Charlie','Poodle',8,'M','AGIL',8);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (17,'Harper','Black Labrador Retriever',6,'F','SECU',10);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (18,'Toby','Corgie',11,NULL,'SECU',10);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (19,'Lily','Havanese',5,'F','AGIL',10);
INSERT INTO DOG (DogID,DogName,Breed,Age,Gender,MajorID,OwnerID) VALUES (20,'Stella','Havanese',NULL,NULL,'AGIL',10);

INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',101,'Introduction to Dog Shows and Showmanships',3,NULL,NULL,'Dog show 101.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',130,'Walking the Ring',3,NULL,NULL,'Keep Head and tail high while circling with energy!');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',160,'Ramps and Obstacles I: Basic Course',4,NULL,NULL,NULL);
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',170,'Ramps and Obstacles II: Advanced Course',4,NULL,NULL,'Navigating Agility Ramps and Obstacles at high speed');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',207,'Introduction to Canine Fashion and Trends',2,NULL,NULL,'Dog fashion.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',217,'Introduction to Sledding',2,NULL,NULL,'Beginning sledding.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',227,'Advanced Sledding',2,NULL,NULL,'Advanced sledding.');

INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',101,'Introduction to Search and Rescue',2,NULL,NULL,'Search and Rescue 101.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',102,'Good Citizenship',3,NULL,NULL,'Dog good citizenship training.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',110,'Navigating Traffic',3,NULL,NULL,'How to cross streets with a handler');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',120,'Explosives Detection: a Gentle Introduction',4,NULL,NULL,'Identify and appropriately alert to explosive materials');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',160,'Navigating Obstacles and Rough Terrain',4,'COMP',160,'Introduction to navigating the ramps and other obstacles used in Agility training.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',180,'Identifying and Tracking Humans by Scent',4,NULL,NULL,'Identifying general and specific humans by scent.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',201,'Understanding Human Behavior',3,NULL,NULL,'How dogs can better understand human behavior');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',205,'Introduction to Canine Psychology',4,NULL,NULL,'Dog pyschology');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',200,'Water Rescue',4,NULL,NULL,NULL);
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('SERV',215,'Food and Drugs: Basic Identification and Signaling',4,NULL,NULL,'Identify and appropriately alert to food or drugs targets');

INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',101,'Basic Military Training',4,NULL,NULL,'Initial instructions for military dogs.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',120,'Basic Navigation',4,'COMP',160,'Introduction to navigating the ramps and other obstacles used in Agility training.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',215,'Basic Identification of Food and Drug',4,'SERV',215,'Identify and appropriately alert to food or drugs targets');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',225,'Identification of Narcotics',5,NULL,NULL,'Identification of substances that contains narcotics');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',205,'Identification of Explosives',3,NULL,NULL,'Identification of explosive substances');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',235,'Explosive Safety',2,NULL,NULL,'Safe navigation around explosives');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',102,'Good Citizenship',3,'SERV',102,'Dog good citizenship training.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('MILP',103,'Search and Rescue',3,'SERV',101,'Basic search and rescue for military dogs.');

INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',102,'Good Citizenship',3,'SERV',102,'Dog good citizenship training.');
INSERT INTO COURSE (DeptID,CourseID,CourseName,NumCredits,XListDeptID,XListCourseID,Description) VALUES ('COMP',201,'Understanding Judges and Audience Behavior',3,'SERV',201,'How dogs can better understand human behavior');


INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('AGIL','COMP',102,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('AGIL','COMP',160,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('AGIL','COMP',170,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('AGIL','COMP',201,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('GUID','SERV',102,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('GUID','SERV',110,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('GUID','SERV',160,1);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('GUID','SERV',215,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('RESC','SERV',101,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('RESC','SERV',102,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('RESC','SERV',160,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('RESC','SERV',180,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('RESC','SERV',205,1);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('RESC','SERV',200,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SECU','SERV',102,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SECU','SERV',205,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SECU','SERV',200,1);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SECU','SERV',215,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SHOW','COMP',102,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SHOW','COMP',130,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SHOW','COMP',201,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SHOW','COMP',207,0);

INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SLED','COMP',170,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SLED','COMP',160,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SLED','COMP',227,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('SLED','COMP',217,0);

INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('DRUG','MILP',102,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('DRUG','MILP',101,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('DRUG','MILP',225,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('DRUG','MILP',215,0);

INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('BOMB','MILP',101,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('BOMB','MILP',102,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('BOMB','MILP',205,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('BOMB','MILP',235,0);
INSERT INTO MAJORREQ (MajorID,DeptID,CourseID,Elective) VALUES ('BOMB','MILP',120,0);
