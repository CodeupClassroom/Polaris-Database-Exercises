USE codeup_test_db;
DROP taBle if exISts albums;

# Create an albums table with the following columns:
#
# id — auto-incrementing unsigned integer primary key
# artist — string for storing the recording artist name
# name — string for storing a record name
# release_date — integer representing year record was released
# sales — floating point value for number of records sold (in millions)
# genre — string for storing the record's genre(s)

CREATE TABLE albums
(
    id           int unsigned not null auto_increment,
    artist       VARCHAR(200) not null,
    name         VARCHAR(300) not null,
    release_date YEAR,
    sales        FLOAT,
    genre        VARCHAR(100),
    PRIMARY KEY (id)
);

describe albums;
