-- Safe DELETE Operation 1
SELECT * FROM duplicate_students
WHERE student_id=101;

DELETE FROM duplicate_students
WHERE student_id=101;

SELECT * FROM duplicate_students
WHERE student_id=101;


-- Safe DELETE Operation 2
SELECT * FROM temp_submissions
WHERE status='invalid';

DELETE FROM temp_submissions
WHERE status='invalid';

SELECT * FROM temp_submissions
WHERE status='invalid';
