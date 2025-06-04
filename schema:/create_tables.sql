CREATE TABLE Cage (  

    cage_id VARCHAR(10) PRIMARY KEY,  

    location VARCHAR(100) NOT NULL,  

    capacity INT CHECK (capacity > 0),  

    current_occupancy INT DEFAULT 0  

);  

   

CREATE TABLE Breed (  

    breed_id VARCHAR(10) PRIMARY KEY,  

    species VARCHAR(50) NOT NULL  

);  

   

CREATE TABLE Animal (  

    animal_id VARCHAR(10) PRIMARY KEY,  

    animal_name VARCHAR(100) NOT NULL,  

    species VARCHAR(50) NOT NULL,  

    age INT CHECK (age >= 0),  

    gender VARCHAR(10),  

    breed_id VARCHAR(10) REFERENCES Breed(breed_id),    

    arrival_date DATE NOT NULL,  

    adoption_status VARCHAR(20) DEFAULT 'Available',  

    cage_id VARCHAR(10)REFERENCES Cage (CageID) 

);  

   

CREATE TABLE Adopter (  

    adopter_id VARCHAR(10) PRIMARY KEY,  

    full_name VARCHAR(100) NOT NULL,  

    email VARCHAR(100) UNIQUE NOT NULL,  

    phone VARCHAR(20) UNIQUE NOT NULL,  

    address VARCHAR(200) NOT NULL  

);  

   

CREATE TABLE Adoption (  

    adoption_id VARCHAR(10) PRIMARY KEY,  

    animal_id VARCHAR(10) REFERENCES Animal(animal_id),  

    adopter_id VARCHAR(10) REFERENCES Adopter(adopter_id),  

    adoption_date DATE NOT NULL,  

    adoption_status VARCHAR(50) NOT NULL  

);  

   

CREATE TABLE Vaccination (  

    vaccination_id VARCHAR(10) PRIMARY KEY,  

    animal_id VARCHAR(10) REFERENCES Animal(animal_id),  

    vaccination_type VARCHAR(100),  

    vaccination_date DATE,  

    next_due_vaccination DATE  

);  

   

CREATE TABLE MedicalRecord (  

    record_id VARCHAR(10) PRIMARY KEY,  

    animal_id VARCHAR(10) REFERENCES Animal(animal_id),  

    visit_date DATE NOT NULL,  

    diagnosis VARCHAR(200),  

    treatment VARCHAR(200),  

    vet_name VARCHAR(100) NOT NULL  

);  

   

CREATE TABLE Staff (  

    staff_id VARCHAR(10) PRIMARY KEY,  

    full_name VARCHAR(100) NOT NULL,  

    role VARCHAR(50),  

    phone VARCHAR(20),  

    email VARCHAR(100) UNIQUE  

);  

   

CREATE TABLE Volunteer (  

    volunteer_id VARCHAR(10) PRIMARY KEY,  

    full_name VARCHAR(100) NOT NULL,  

    email VARCHAR(100) UNIQUE,  

    phone VARCHAR(20),  

    availability VARCHAR(50)  

);  

   

CREATE TABLE Schedule (  

    schedule_id VARCHAR(10) PRIMARY KEY,  

    staff_id VARCHAR(10) REFERENCES Staff(staff_id),  

    volunteer_id VARCHAR(10) REFERENCES Volunteer(volunteer_id),  

    role_type VARCHAR(50) NOT NULL,  

    shift_date DATE NOT NULL,  

    start_time TIME NOT NULL,  

    end_time TIME NOT NULL  

);  

   

CREATE TABLE Donation (  

    donation_id VARCHAR(10) PRIMARY KEY,  

    adopter_id VARCHAR(10) REFERENCES Adopter(adopter_id),  

    donor_name VARCHAR(100) NOT NULL,  

    amount DECIMAL(10,2) CHECK (amount > 0),  

    date DATE,  

    donor_type VARCHAR(50)  

);

  

 

 