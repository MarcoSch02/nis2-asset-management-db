CREATE TABLE criticita (
    id SERIAL PRIMARY KEY,
    livello VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO criticita (livello) VALUES
('Bassa'),
('Media'),
('Alta'),
('Molto Alta');
;
ALTER TABLE asset
ADD COLUMN criticita_id INT;

ALTER TABLE asset
ADD CONSTRAINT fk_asset_criticita
FOREIGN KEY (criticita_id)
REFERENCES criticita(id);
