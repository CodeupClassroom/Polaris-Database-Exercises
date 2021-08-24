use codeup_test_db;

# All Pink Floyd albums
select name
from albums
where artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# The genre for Nevermind
select genre from albums where name = 'Nevermind';


# Which albums were released in the 1990s
select name from albums where release_date between 1990 and 1999;

# Which albums had less than 20 million certified sales
select name from albums where sales < 20;

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
select * from albums where genre = 'rock';

# here we grab any genres that contain the text rock
# select * from albums where genre like '%rock%';

# here we grab any genres that contain the text rock or the text pop
# select * from albums where genre like '%rock%' or genre like '%pop%';