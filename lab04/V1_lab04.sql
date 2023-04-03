create database taxidb;

create schema data;

create table data.user(
    id serial PRIMARY KEY,
    name varchar(100),
    surname varchar(100),
    email varchar(100),
    phone_number varchar(100)
);

create table data.vehicle_type(
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL
);

create table data.vehicle(
    id serial PRIMARY KEY,
    manufacturer varchar(100),
    model varchar(100)
);

create table data.drivers_vehicle(
    id serial PRIMARY KEY,
    licence_plate_number varchar(25),
    color varchar(25)
);

create table data.driver(
    id serial PRIMARY KEY,
    photo bytea
);

create table data.driver_rating(
    id serial PRIMARY KEY,
    skill int NOT NULL,
    vehicle_condition int NOT NULL,
    abiding_law int NOT NULL
);

create table data.passenger(
    id serial PRIMARY KEY
);

create table data.passenger_rating(
    id serial PRIMARY KEY,
    behavior int NOT NULL,
    punctuality int NOT NULL
);

create table data.ride(
    id serial PRIMARY KEY,
    distance numeric(6,2)
);

create table data.payment_method(
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL
);

create table data.payment(
    id serial PRIMARY KEY,
    value money NOT NULL
);

create table data.address(
    id serial PRIMARY KEY,
    street varchar(100) NOT NULL,
    building_number varchar(25),
    apartment_number varchar(25),
    zip_code varchar(25) NOT NULL,
    city varchar(25) NOT NULL,
    state varchar(25) NOT NULL
);

create table data.area(
    name varchar(255) NOT NULL
);

insert into data.user(name, surname, email, phone_number) values
    ('Amy', 'Hall', 'sarina2000@gmail.com', '651-402-4209'),
    ('James', 'Shreve', 'carleton1998@hotmail.com', '731-437-4373'),
    ('Joseph', 'Michaud', 'matilde1978@gmail.com', '239-992-2664'),
    ('Sherry', 'Goodwin', 'allen.kula9@hotmail.com', '601-299-1138'),
    ('Cory', 'Dejong', 'bradly1988@gmail.com', '323-645-1242');

insert into data.vehicle_type(name) values
    ('convertable'),
    ('offroad'),
    ('van'),
    ('pickup'),
    ('luxury');

insert into data.vehicle(manufacturer, model) values
    ('Toyota','TUNDRA'),
    ('Bmw','Z3'),
    ('Ford', 'ESCAPE'),
    ('Mercedes-Benz','C250'),
    ('Volkswagen','CADDY');

insert into data.drivers_vehicle(licence_plate_number, color) values
    ('ADOPT9','White'),
    ('AA76754','Black'),
    ('LMF8072','Grey'),
    ('FGL9083','Red'),
    ('SUELOO','Blue');

insert into data.driver_rating(skill, vehicle_condition, abiding_law) values
    (10,10,10),
    (8,9,6),
    (6,10,10),
    (4,2,8),
    (4,0,0);

insert into passenger_rating(behavior, punctuality) values
    (9,4),
    (10,10),
    (2,8),
    (0,0),
    (5,5);

insert into ride(distance) values
    (10.84),
    (15.42),
    (44.02),
    (5.98),
    (21.47);

insert into address(street,zip_code,city,state) values
    ('Redfield St', '54981', 'Waupaca', 'Wisconsin'),
    ('Baltimore Dr', '60061', 'Vernon Hills', 'Illinois'),
    ('Toya Vista Rd', '85541', 'Payson', 'Arizona'),
    ('Presidents Cir #201', '84112', 'Salt Lake City', 'Utah'),
    ('Elaine Dr', '38401', 'Columbia', 'Tennessee');
