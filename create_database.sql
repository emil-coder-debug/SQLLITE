-- SQLite Verilənlər Bazası (5 Qrup, 20 Tələbə)
CREATE TABLE groups (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name TEXT NOT NULL
);

INSERT INTO groups (group_name) VALUES 
('6225a1'), ('6225a2'), ('6225a3'), ('6225a4'), ('6225a5');

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    group_id INTEGER,
    score REAL,
    FOREIGN KEY (group_id) REFERENCES groups (group_id)
);

INSERT INTO students (first_name, last_name, group_id, score) VALUES
-- Qrup 6225a1
('Əli', 'Məmmədov', 1, 88.5),
('Leyla', 'Əliyeva', 1, 92.0),
('Cavid', 'Şərifov', 1, 80.0),
('Günel', 'Həsənova', 1, 94.5),
-- Qrup 6225a2
('Rəşad', 'Hüseynov', 2, 75.4),
('Aysel', 'Qasımova', 2, 95.0),
('Tural', 'Nəzirov', 2, 83.2),
('Səbinə', 'Verdiyeva', 2, 88.0),
-- Qrup 6225a3
('Elvin', 'Quliyev', 3, 81.2),
('Nigar', 'Süleymanova', 3, 89.0),
('Fuad', 'Bəkirov', 3, 72.5),
('Ləmən', 'Əkbərova', 3, 91.0),
-- Qrup 6225a4
('Murad', 'İsmayılov', 4, 67.8),
('Fidan', 'Rzayeva', 4, 91.5),
('Emin', 'Cəfərov', 4, 85.0),
('Zəhra', 'Kazımova', 4, 96.0),
-- Qrup 6225a5
('Orxan', 'Əhmədov', 5, 84.0),
('Kənan', 'Mahmudov', 5, 78.9),
('Vüsal', 'Qədimov', 5, 82.1),
('Aytən', 'Məlikova', 5, 90.0);
