CREATE TABLE customer_cars(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_address VARCHAR(50),
    customer_email VARCHAR(30),
    customer_phone_num VARCHAR(30)
);

CREATE TABLE service_customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_address VARCHAR(50),
    customer_email VARCHAR(30),
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salesperson_email VARCHAR(50),
    salesperson_phone_num VARCHAR(30)
);

CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    car_type VARCHAR(50),
    car_model VARCHAR(50),
    car_color VARCHAR(40),
    is_car_available VARCHAR(10)
);

CREATE TABLE sale_payment(
    sale_payment_id SERIAL PRIMARY KEY,
    customer_id SERIAL,
    salesperson_id SERIAL,
    car_id SERIAL,
    sales_invoice_number INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer_cars(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    mechanic_email VARCHAR(30),
    mechanic_phone_num VARCHAR(30)
);


CREATE TABLE mechanic_service(
    mechanic_service_id SERIAL PRIMARY KEY,
    service_ticket_id SERIAL,
    mechanic_id SERIAL,
    car_serial_number SERIAL,
    final_service_charge INTEGER
);

CREATE TABLE service_history(
    car_serial_number SERIAL PRIMARY KEY,
    final_service_charge INTEGER,
    service_ticket_id SERIAL,
    done_to_car VARCHAR(200)
);

CREATE TABLE service_info(
    service_ticket_id SERIAL PRIMARY KEY,
    car_id SERIAL,
    customer_id SERIAL,
    service_ticket_number INTEGER,
    done_to_car VARCHAR(200),
    date_received VARCHAR(20),
    date_returned VARCHAR(20),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES service_customer(customer_id)
);

ALTER TABLE service_customer
ADD FOREIGN KEY (car_id) REFERENCES cars(car_id);



ALTER TABLE mechanic_service
ADD FOREIGN KEY (service_ticket_id) REFERENCES service_info(service_ticket_id),
ADD FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
ADD FOREIGN KEY (car_serial_number) REFERENCES service_history(car_serial_number);
