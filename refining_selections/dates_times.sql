CURDATE() - gives current date
CURTIME() - gives current time
NOW() - gives current datetime

INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES
('Microwave', CURDATE(), CURTIME(), NOW());

DAY() --SELECT name, DAY(birthdate) FROM people;
DAYNAME() --SELECT name, DAYNAME(birthdate) FROM people;
DAYOFWEEK()--SELECT birthday, DAYOFWEEK(birthdate) FROM people;
DAYOFYEAR() --SELECT birthday, DAYOFYEAR(birthdate) FROM people;
--SELECT birthdt, DAYOFYEAR(birthdt) FROM people;
--SELECT birthdt, MONTH(birthdt) FROM people;
--SELECT birthdt, MONTHNAME(birthdt) FROM people;
--SELECT birthdtime, MINUTE(birthdtime) FROM people;

"2017-04-21"
CONCAT(MONTHNAME(birthdate),' ', DAY(birthdate), ' ', YEAR(birthdate))
-- "April 21st 2017"

DATE_FORMAT(date, format)
--