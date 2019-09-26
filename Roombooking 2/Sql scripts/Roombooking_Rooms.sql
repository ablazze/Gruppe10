CREATE DATABASE 'Roombooking';

CREATE TABLE Roombooking.Rooms
(
    Room_ID int(11) AUTO_INCREMENT,
    Room_name VARCHAR(255),
    Room_building VARCHAR(255),
    Room_maxCapacity int(11),
    CONSTRAINT R_Room_ID_PK PRIMARY KEY (Room_ID)
);

CREATE TABLE Roombooking.`Order`
(
    Order_ID int(11) AUTO_INCREMENT,
    User_ID int(11),
    Room_ID int(255),
    CONSTRAINT O_Order_ID_PK PRIMARY KEY (Order_ID),
    CONSTRAINT O_User_ID_FK FOREIGN KEY (User_ID) REFERENCES User (User_ID),
    CONSTRAINT O_Room_ID_FK FOREIGN KEY (Room_ID) REFERENCES Rooms(Room_ID)
);

CREATE TABLE Roombooking.User
(
    User_ID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    User_firstName varchar(20) NOT NULL,
    User_lastName varchar(35) NOT NULL,
    User_email varchar(40) UNIQUE,
    User_dob varchar(40) NOT NULL,
    User_password varchar(255),
    User_salt varchar(100)
);