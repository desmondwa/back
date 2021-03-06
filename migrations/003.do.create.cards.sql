CREATE TABLE flash_cards (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  date_modified TIMESTAMP,
   project_id INTEGER REFERENCES flash_projects(id)
    ON DELETE SET NULL
);

