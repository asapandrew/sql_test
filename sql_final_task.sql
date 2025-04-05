CREATE TABLE last_names (
    id INT PRIMARY KEY,
    last_name VARCHAR(50));

CREATE TABLE first_names (
    id INT PRIMARY KEY,
    first_name VARCHAR(50));

CREATE TABLE patronymics (
    id INT PRIMARY KEY,
    patronymic VARCHAR(50));

INSERT INTO last_names (id, last_name) VALUES
(1, 'Иванов'),
(2, 'Петров'),
(3, 'Сидоров');

INSERT INTO first_names (id, first_name) VALUES
(1, 'Иван'),
(2, 'Петр'),
(3, 'Сидор');

INSERT INTO patronymics (id, patronymic) VALUES
(1, 'Иванович'),
(2, 'Петрович'),
(3, 'Сидорович');

SELECT ln.last_name || ' ' || fn.first_name || ' ' || pn.patronymic AS full_name
FROM last_names ln
INNER JOIN first_names fn ON ln.id = fn.id
INNER JOIN patronymics pn ON ln.id = pn.id
ORDER BY full_name DESC;
