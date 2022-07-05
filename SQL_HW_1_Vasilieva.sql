-- Display all fields and all rows
SELECT * FROM students;

-- Display all students in the table
SELECT name FROM students;

-- Display only user IDs
SELECT id FROM students;

-- Display only the username
SELECT name FROM students;

-- Display only user emails
SELECT email FROM students;

-- Display username and email
SELECT name, email FROM students;

-- Display id, name, email and creation date of users
SELECT id, name, email, created_on FROM students;

-- Display users where password is 12333
SELECT * FROM students
WHERE password = '12333';

-- Display users who were created 2021-03-26 00:00:00
SELECT * FROM students
WHERE created_on = '2021-03-26 00:00:00';

-- Display users where the name contains the word Anna
SELECT * FROM students
WHERE name LIKE '%Anna%';

-- Display users where there is 8 in the name at the end
SELECT * FROM students
WHERE name LIKE '%8';

-- Display users where the letter a is in the name in
SELECT * FROM students
WHERE name like '%a%';

-- Display users who were created 2021-07-12 00:00:00
SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00';

-- Display users who were created on 2021-07-12 00:00:00 and have a password of 1m313
SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' AND "password" = '1m313';

-- Display users who were created on 2021-07-12 00:00:00 and have the word Andrey in their name
SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' AND NAME LIKE '%Andrey%';

-- Display users who were created on 2021-07-12 00:00:00 and have the number 8 in their name
SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' and NAME LIKE '%8%';

-- Display user whose id is equal to 110
SELECT * FROM students
WHERE id = 110;

-- Display user whose id is equal to 153
SELECT * FROM students
WHERE id = 153;

-- Display user whose id is greater than 140
SELECT * FROM students
WHERE id > 140;

-- Display user whose id is less than 130
SELECT * FROM students
WHERE id < 130;

-- Display user whose id is less than 127 or greater than 188
SELECT * FROM students
WHERE id < 127 OR id > 188;

-- Display user whose id is less than or equal to 137
SELECT * FROM students
WHERE id <= 137;

-- Display user whose id is greater than or equal to 137
SELECT * FROM students
WHERE id >= 137;

-- Display user whose id is greater than 180 but less than 190
SELECT * FROM students
WHERE id > 180 and id < 190;

-- Display user whose id is between 180 and 190
SELECT * FROM students
WHERE id BETWEEN '180' and '190';

-- Display users where password is 12333, 1m313, 123313
SELECT * FROM students
WHERE password IN ('12333', '1m313', '123313');

-- Display users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM students
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- Display minimum id
SELECT min(id) FROM students;

-- Display maximum id
SELECT max(id) FROM students;

-- Display the number of users
SELECT count(*) FROM students;

-- Display user id, name, user creation date. Sort in ascending order by the date the user was added
SELECT id, name, created_on FROM students
order by created_on ASC;

-- Display user id, name, user creation date. Sort in descending order by the date the user was added
SELECT id, name, created_on FROM students
order by created_on DESC;