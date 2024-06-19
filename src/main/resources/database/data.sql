truncate table elections cascade;
truncate table candidates cascade;
truncate table voters cascade;


insert into elections(election_id, title, start_date, end_date, category, time_created) values
    (200, 'Presidential Elections', '2024-07-19T09:00', '2024-07-19T01:00', 'NATIONAL',
     '2024-06-19T09:52:36.836436300');


insert into candidates(candidate_id, first_name, last_name, username, email, password, position_contested,
                       party_affiliation, election_id, time_created) values
(100, 'Adewale', 'Adebowale', 'A2', 'adesquare@gmail.com', 'password', 'NATIONAL', 'PDP', 200,
 '2024-06-19T09:52:36.836436300'),
(101, 'Olatunbosun', 'Adeotun', 'Bosun', 'adeotunola@gmail.com', 'password', 'NATIONAL', 'APC', 200,
 '2024-06-19T09:52:36.836436300'),
(102, 'Gbenga', 'Akeem', 'Gbenga', 'AkeemGbenga@gmail.com', 'password', 'NATIONAL', 'LP', 200,
 '2024-06-19T09:52:36.836436300'),
(103, 'Patience', 'Goodluck', 'Pg', 'patienceg@gmail.com', 'password', 'NATIONAL', 'YPP', 200,
 '2024-06-19T09:52:36.836436300');



insert into voters(voter_id, first_name, last_name, date_of_birth, state_of_origin, email, password, time_created)
values
(200, 'Rebecca', 'Nelson', '20-05-1999', 'Lagos', 'rebbecaNelson@gmail.com', 'password',
 '2024-06-19T09:52:36.836436300'),
(201, 'Bankole', 'Taiwo', '20-05-2000', 'Ogun', 'Tmoney@gmail.com', 'password', '2024-06-19T09:52:36.836436300'),
(202, 'Rukkayah', 'Akeem', '20-05-1970', 'Delta', 'AkeemRukky@gmail.com', 'password', '2024-06-19T09:52:36.836436300'),
(203, 'Faith', 'Joseph', '20-05-1991', 'Osun', 'FaithJo@gmail.com', 'password', '2024-06-19T09:52:36.836436300');



