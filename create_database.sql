-- SQLite Verilənlər Bazası (group_id və group_name TEXT tipində eyniləşdirildi: 6225a1 - 6225a5)
CREATE TABLE groups (
    group_id TEXT PRIMARY KEY,
    group_name TEXT NOT NULL
);

INSERT INTO groups (group_id, group_name) VALUES 
('6225a1', '6225a1'),
('6225a2', '6225a2'),
('6225a3', '6225a3'),
('6225a4', '6225a4'),
('6225a5', '6225a5');

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    group_id TEXT,
    score REAL,
    FOREIGN KEY (group_id) REFERENCES groups (group_id)
);

INSERT INTO students (first_name, last_name, group_id, score) VALUES
('Əli', 'Məmmədov', '6225a1', 88.5),
('Leyla', 'Əliyeva', '6225a1', 92.0),
('Cavid', 'Şərifov', '6225a1', 79.5),
('Günel', 'Həsənova', '6225a1', 85.0),
('Rəşad', 'Hüseynov', '6225a2', 75.4),
('Aysel', 'Qasımova', '6225a2', 95.0),
('Tural', 'Nəzirov', '6225a2', 82.3),
('Səbinə', 'Verdiyeva', '6225a2', 88.0),
('Elvin', 'Quliyev', '6225a3', 81.2),
('Nigar', 'Süleymanova', '6225a3', 89.0),
('Fuad', 'Bəkirov', '6225a3', 77.5),
('Ləman', 'Əkbərova', '6225a3', 90.5),
('Murad', 'İsmayılov', '6225a4', 67.8),
('Fidan', 'Rzayeva', '6225a4', 91.5),
('Emin', 'Cəfərov', '6225a4', 83.4),
('Zəhra', 'Kazımova', '6225a4', 86.2),
('Orxan', 'Əhmədov', '6225a5', 84.0),
('Kənan', 'Mahmudov', '6225a5', 78.9),
('Vüsal', 'Qədimov', '6225a5', 80.1),
('Aytən', 'Məlikova', '6225a5', 93.4);
