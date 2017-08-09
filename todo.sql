CREATE TABLE todo (
    id            SERIAL PRIMARY KEY,
    title         varchar(255) NOT NULL,
    details       varchar(8000),
    priority      integer DEFAULT 1 NOT NULL,
    created_at    timestamp NOT NULL,
    completed_at  timestamp
);


-- INSERTS ================================================================

INSERT INTO todo (title, details, priority, created_at) VALUES ('Buy groceries', 'Use grocery list', 2, TO_TIMESTAMP('2017-08-01 07:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO todo (title, priority, created_at) VALUES ('Wash car', 4, TO_TIMESTAMP('2017-08-07 16:25:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO todo (title, details, priority, created_at) VALUES ('Laundry', 'Wash work clothes first', 1, TO_TIMESTAMP('2017-08-02 22:15:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO todo (title, details, priority, created_at) VALUES ('Mow lawn', 'Pick up dog poop first', 3, TO_TIMESTAMP('2017-08-03 10:35:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO todo (title, priority, created_at, completed_at) VALUES ('Buy birthday gift', 5, TO_TIMESTAMP('2017-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2017-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));


-- SELECT -- INCOMPLETED TODOS ===========================================

SELECT * FROM todo WHERE completed_at IS NULL;

-- SELECT -- PRIORITIES ABOVE 1 ==========================================

SELECT * FROM todo WHERE priority > 1;


-- UPDATE ================================================================

UPDATE todo SET completed_at = TO_TIMESTAMP('2017-08-08 08-45-00', 'YYYY-MM-DD HH24:MI:SS') WHERE title = 'Wash car';


-- DELETE ================================================================

DELETE FROM todo WHERE completed_at IS NOT NULL;
