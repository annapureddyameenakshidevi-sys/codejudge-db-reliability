-- Transaction Scenario 1
START TRANSACTION;

INSERT INTO submissions(submission_id, student_id, score)
VALUES (201, 1, 85);

UPDATE test_results
SET status='passed'
WHERE submission_id=201;

COMMIT;


-- Transaction Scenario 2
START TRANSACTION;

INSERT INTO enrollments(enrollment_id, student_id, course_id)
VALUES (301, 2, 10);

ROLLBACK;


-- Transaction Scenario 3
START TRANSACTION;

UPDATE submissions
SET score=95
WHERE submission_id=101;

SAVEPOINT update_point;

UPDATE submissions
SET score=100
WHERE submission_id=102;

ROLLBACK TO update_point;

COMMIT;
