INSERT INTO customer_cars(
    first_name,
    last_name,
    customer_address,
    customer_email,
    customer_phone_num
)

VALUES(
    'jeff',
    'saturday',
    '43829 colt ave, indianapolis, in.',
    'jsaturday@gmail.com',
    '202-293-2012'
),
(
    'josh',
    'jacobs',
    '34234 raider drive, las vegas, nv.',
    'jjacobs@gmail.com',
    '290-293-2328'
);


INSERT INTO cars(
    car_type,
    car_model,
    car_color,
    is_car_available
)
VALUES(
    'toyota',
    'camry',
    'gray',
    'yes'
),
(
    'acura',
    'mdx',
    'black',
    'yes'
),
(
    'tesla',
    'model x',
    'blue',
    'no'
),
(
    'toyota',
    'corrolla',
    'white',
    'no'
);

SELECT*
FROM service_customer
INSERT INTO service_customer(
    first_name,
    last_name,
    customer_address,
    customer_email
)

VALUES(
    'stephen',
    'curry',
    '83929 winner drive, oakland, ca.',
    'sdotcurry@gmail.com'
),
(
    'dray',
    'thompson',
    '20291 winner drive, oakland, ca.',
    'draythompson@gmail.com'
);


INSERT INTO salesperson(
    first_name,
    last_name,
    salesperson_email,
    salesperson_phone_num
)
VALUES(
    'bob',
    'newby',
    'bobnewby@gmail.com',
    '577-443-6248'
),
(
    'ted',
    'larry',
    'tedlarry@gmail.com',
    '884-410-4376'
);


INSERT INTO sale_payment(
    sales_invoice_number
)
VALUES(
    '249934'
),
(
    '874837'
);


INSERT INTO mechanic(
    first_name,
    last_name,
    mechanic_email,
    mechanic_phone_num
)
VALUES(
    'timmy',
    'tom',
    'tommytom@gmail.com',
    '665-354-5653'
),
(
    'jonh',
    'huemm',
    'iliketoeat@gmail.com',
    '838-434-5094'
);

INSERT INTO mechanic_service(
    service_ticket_id,
    car_serial_number,
    mechanic_id,
    final_service_charge
)
VALUES(
    '5',
    '1',
    '1',
    '843'
),
(
    '6',
    '2',
    '2',
    '291'
);


INSERT INTO service_history(
    final_service_charge,
    done_to_car
)
VALUES(
    '7583',
    'fixed the entire side mirror and replaced the bumper'
),
(
    '48',
    'quick oil check'
);

INSERT INTO service_info(
    customer_id,
    car_id,
    service_ticket_number,
    done_to_car,
    date_received,
    date_returned
)
VALUES(
    '7',
    '3',
    '89',
    'fixed the side mirror and replaced the bumper',
    '11-29',
    '12-10'
),
(
    '8',
    '4',
    '90',
    'oil check',
    '11-29',
    '11-30'
);
