CREATE DATABASE Youcode;

-- students table

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(50) ,
    Etat VARCHAR(20),
)
-- insert data to table

INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `status`) VALUES (NULL, 'Ammar', 'kasimi', 'elolmtaszzs@gmail.com', 'student');
INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `status`) VALUES (NULL, 'Ammar', 'kasimi', 'elolmtaszzs@gmail.com', 'student');
INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `status`) VALUES (NULL, 'Ammar', 'kasimi', 'elolmtaszzs@gmail.com', 'student');
INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `status`) VALUES (NULL, 'Ammar', 'kasimi', 'elolmtaszzs@gmail.com', 'student');
INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `status`) VALUES (NULL, 'Ammar', 'kasimi', 'elolmtaszzs@gmail.com', 'student');
INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `status`) VALUES (NULL, 'Ammar', 'kasimi', 'elolmtaszzs@gmail.com', 'student');
etc.....(20 times)

-- Bde table 

CREATE TABLE BDE (
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    RoleInBde VARCHAR(50) ,
    JoinDate DATE,
    BdeId INT,
    Foreign Key (BdeId) REFERENCES students(id)
)

-- insert data to bde table 

INSERT INTO `bde` (`id`, `firstname`, `lastname`, `roleInBde`, `JoinDate`, `studentID`) VALUES (NULL, 'soufyan', 'elomrani', 'President', '2025-12-04', '1');
INSERT INTO `bde` (`id`, `firstname`, `lastname`, `roleInBde`, `JoinDate`, `studentID`) VALUES (NULL, 'Ammar', 'kasimi', 'Vice-president', '2025-12-04', '2');
INSERT INTO `bde` (`id`, `firstname`, `lastname`, `roleInBde`, `JoinDate`, `studentID`) VALUES (NULL, 'soufyan', 'elomrani', 'President', '2025-12-04', '4');
INSERT INTO `bde` (`id`, `firstname`, `lastname`, `roleInBde`, `JoinDate`, `studentID`) VALUES (NULL, 'soufyan', 'elomrani', 'President', '2025-12-04', '1');

-- etc.....

CREATE TABLE evenments(
    EventId INT PRIMARY AUTO_INCREMENT,
    typee VARCHAR(30),
    Budget DECIMAL,
    OrganiseId INT,
    Descriptioon TEXT,
    Foreign Key (OrganiseId) REFERENCES bde(BdeId)
)

--Insert Data to events table 

INSERT INTO `evenements` (`type`, `Budget`, `OrganiseId`, `description`, `evenId`) VALUES ('Movie Night', '2000', '1', 'a social gathering where people watch a film together, typically at home or in a community space, complete with snacks and drinks', NULL);
INSERT INTO `evenements` (`type`, `Budget`, `OrganiseId`, `description`, `evenId`) VALUES ('Movie Night', '2000', '1', 'a social gathering where people watch a film together, typically at home or in a community space, complete with snacks and drinks', NULL);
INSERT INTO `evenements` (`type`, `Budget`, `OrganiseId`, `description`, `evenId`) VALUES ('Movie Night', '2000', '1', 'a social gathering where people watch a film together, typically at home or in a community space, complete with snacks and drinks', NULL);
INSERT INTO `evenements` (`type`, `Budget`, `OrganiseId`, `description`, `evenId`) VALUES ('Movie Night', '2000', '1', 'a social gathering where people watch a film together, typically at home or in a community space, complete with snacks and drinks', NULL);

-- etc...

-- create sponsors table


CREATE TABLE sponsors (
    SponsorId INT PRIMARY KEY AUTO_INCREMENT,
    OrganisationName VARCHAR(30),
    ContributionToEvent DECIMAl,
    SponsoredEvenId INT,
    ContactEmail VARCHAR(35),
    Sponsor_phone VARCHAR(25),
    FOREIGN KEY (SponsoredEvenId) REFERENCES evenements(evenId)
    );

    -- Insert data to sponsor table 


    INSERT INTO `sponsors` (`SponsorId`, `OrganisationName`, `ContributionToEvent`, `SponsoredEvenId`, `ContactEmail`, `Sponsor_phone`) VALUES (NULL, 'simplon', '2000', '1', 'contact.simplon.co', '0128337363');
    INSERT INTO `sponsors` (`SponsorId`, `OrganisationName`, `ContributionToEvent`, `SponsoredEvenId`, `ContactEmail`, `Sponsor_phone`) VALUES (NULL, 'simplon', '2000', '1', 'contact.simplon.co', '0128337363');
    INSERT INTO `sponsors` (`SponsorId`, `OrganisationName`, `ContributionToEvent`, `SponsoredEvenId`, `ContactEmail`, `Sponsor_phone`) VALUES (NULL, 'simplon', '2000', '1', 'contact.simplon.co', '0128337363');
    INSERT INTO `sponsors` (`SponsorId`, `OrganisationName`, `ContributionToEvent`, `SponsoredEvenId`, `ContactEmail`, `Sponsor_phone`) VALUES (NULL, 'simplon', '2000', '1', 'contact.simplon.co', '0128337363');


-- create participants table 
    CREATE TABLE Participants (
    participantId INT PRIMARY KEY AUTO_INCREMENT,
    EventAttendedId INT,
    FOREIGN KEY (EventAttendedId) REFERENCES evenements(EvenId)
    )

-- insert data
INSERT INTO `participants` (`participantId`, `EventAttendedId`) VALUES  (NULL, '1');
INSERT INTO `participants` (`participantId`, `EventAttendedId`) VALUES  (NULL, '2');
INSERT INTO `participants` (`participantId`, `EventAttendedId`) VALUES  (NULL, '3');
INSERT INTO `participants` (`participantId`, `EventAttendedId`) VALUES  (NULL, '4');