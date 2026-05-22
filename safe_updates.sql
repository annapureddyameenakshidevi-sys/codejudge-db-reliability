-- Safe UPDATE Operation 1
SELECT * FROM students WHERE email='wrongmail.com';

UPDATE students
SET email='student1@gmail.com'
WHERE email='wrongmail.com';

SELECT * FROM students WHERE email='student1@gmail.com';


-- Safe UPDATE Operation 2
SELECT * FROM enrollments WHERE batch_id IS NULL;

UPDATE enrollments
SET batch_id=101
WHERE batch_id IS NULL;

SELECT * FROM enrollments WHERE batch_id=101;


-- Safe UPDATE Operation 3
SELECT * FROM submissions WHERE score<0;

UPDATE submissions
SET score=0
WHERE score<0;

SELECT * FROM submissions WHERE score=0;


-- Safe UPDATE Operation 4
SELECT * FROM operation_requests WHERE status='pending';

UPDATE operation_requests
SET status='approved'
WHERE status='pending';

SELECT * FROM operation_requests WHERE status='approved';
