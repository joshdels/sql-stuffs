CREATE TABLE char_data_types (
  char_column CHAR(10),
  varchar_column VARCHAR(10),
  text_column text
);

INSERT INTO char_data_types VALUES
('abc', 'abc', 'abc'),
('defghi', 'defghi', 'defghi');


--Exporting
COPY char_data_types TO 'D:\1. PROJECT\text.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|')

--For Date and Time
CREATE TABLE date_time_types (
  timestamp_column timestamp with time zone,
  interval_column interval
);

INSERT INTO date_time_types VALUES
('2022-12-31 01:00 EST','2 days'),
('2022-12-31 01:00 -8','1 month'),
('2022-12-31 01:00 Australia/Melbourne','1 century'),
(now(), '1 week');

SELECT timestamp_column, interval_column, timestamp_column - interval_column AS new_data
FROM date_time_types;

--CAST for chaning the data type
SELECT timestamp_column, CAST(timestamp_column AS varchar(10))
FROM date_time_types;

-- or use shortcut notation
SELECT timestamp_column::varchar(10) AS new
FROM date_time_types

