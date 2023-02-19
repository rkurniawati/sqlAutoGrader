-- K9U: Canine University database
DROP SCHEMA IF EXISTS K9U;

CREATE SCHEMA IF NOT EXISTS K9U DEFAULT CHARACTER SET utf8 ;
USE K9U ;

-- This database is limited to 1:N relationships, note that there is no connection between DOG and
DROP TABLE IF EXISTS MAJORREQ;
DROP TABLE IF EXISTS DOG;
DROP TABLE IF EXISTS OWNER;
DROP TABLE IF EXISTS COURSE;
DROP TABLE IF EXISTS MAJOR;
DROP TABLE IF EXISTS DEPARTMENT;

CREATE TABLE IF NOT EXISTS DEPARTMENT (
  DeptID CHAR(4) NOT NULL,
  DeptName VARCHAR(30) NOT NULL,
  PRIMARY KEY (DeptID))
COMMENT = 'Departments with descriptions';

CREATE TABLE IF NOT EXISTS MAJOR (
  MajorID CHAR(4) NOT NULL,
  MajorName VARCHAR(45) NOT NULL,
  StartYear YEAR NOT NULL,
  AccreditationInfo VARCHAR(100) NULL DEFAULT NULL,
  Description VARCHAR(200) NULL DEFAULT NULL,
  DeptID CHAR(4) NOT NULL,
  PRIMARY KEY (MajorID),
  INDEX deptFK_idx (DeptID ASC) VISIBLE,
  CONSTRAINT deptFK
    FOREIGN KEY (DeptID)
    REFERENCES DEPARTMENT (DeptID))
COMMENT = 'Majors offered in K9U';


CREATE TABLE IF NOT EXISTS OWNER (
  OwnerID INT NOT NULL AUTO_INCREMENT,
  FirstName VARCHAR(45) NOT NULL,
  MiddleInitial CHAR(1) NULL DEFAULT NULL,
  LastName VARCHAR(45) NOT NULL,
  StreetAddress VARCHAR(100) NULL DEFAULT NULL,
  City VARCHAR(20) NULL DEFAULT NULL,
  State CHAR(2) NULL DEFAULT NULL,
  ZIP CHAR(5) NULL DEFAULT NULL,
  Phone CHAR(10) NOT NULL,
  PRIMARY KEY (OwnerID))
COMMENT = 'Dog owner info';



CREATE TABLE IF NOT EXISTS DOG (
  DogID INT NOT NULL AUTO_INCREMENT,
  DogName VARCHAR(45) NOT NULL,
  Breed VARCHAR(45) NULL DEFAULT NULL,
  Age INT NULL DEFAULT NULL,
  Gender CHAR(1) NULL DEFAULT NULL,
  MajorID CHAR(4) NULL DEFAULT NULL,
  OwnerID INT NOT NULL,
  PRIMARY KEY (DogID),
  INDEX fk_Dog_Major1_idx (MajorID ASC) VISIBLE,
  INDEX fk_Dog_Owner1_idx (OwnerID ASC) VISIBLE,
  CONSTRAINT fk_Dog_Major1
    FOREIGN KEY (MajorID)
    REFERENCES MAJOR (MajorID),
  CONSTRAINT fk_Dog_Owner1
    FOREIGN KEY (OwnerID)
    REFERENCES OWNER (OwnerID))
COMMENT = 'Dog information';

CREATE TABLE IF NOT EXISTS COURSE (
  DeptID CHAR(4) NOT NULL,
  CourseID INT NOT NULL,
  CourseName VARCHAR(100) NOT NULL,
  NumCredits INT NULL DEFAULT NULL,
  XListDeptID CHAR(4) NULL DEFAULT NULL,
  XListCourseID INT NULL DEFAULT NULL,
  Description TEXT NULL DEFAULT NULL,
  PRIMARY KEY (DeptID, CourseID),
  INDEX fk_Course_XList (XListDeptID ASC, XListCourseID ASC) VISIBLE,
  CONSTRAINT coursedeptFK
    FOREIGN KEY (DeptID)
    REFERENCES DEPARTMENT (DeptID),
  CONSTRAINT fk_Course_XList
    FOREIGN KEY (XListDeptID , XListCourseID)
    REFERENCES COURSE (DeptID , CourseID))
COMMENT='A course is identified by the DeptID and CourseID, eg. RESC-101. A course may be another course that is "cross-listed" as another course the original/base course will have NULL XList* fields';

CREATE TABLE IF NOT EXISTS MAJORREQ (
  MajorID CHAR(4) NOT NULL,
  Elective TINYINT NULL DEFAULT NULL,
  DeptID CHAR(4) NOT NULL,
  CourseID INT NOT NULL,
  PRIMARY KEY (MajorID, DeptID, CourseID),
  INDEX fk_MajorRequirements_COURSE1_idx (DeptID ASC, CourseID ASC) VISIBLE,
  CONSTRAINT fk_MajorRequirements_Major1
    FOREIGN KEY (MajorID)
    REFERENCES MAJOR (MajorID),
  CONSTRAINT fk_MajorRequirements_COURSE1
    FOREIGN KEY (DeptID , CourseID)
    REFERENCES COURSE (DeptID , CourseID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT='Requirements to graduate from a major';


