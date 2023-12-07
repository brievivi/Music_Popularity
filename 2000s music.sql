CREATE DATABASE 2000s_music;
USE 2000s_music;
CREATE TABLE music (ID INT,
					Title VARCHAR(20),
                    Artist VARCHAR(20),
                    Top_Genre VARCHAR(20),
                    Year INT,
                    Beats_per_min INT,
                    Energy INT,
                    Danceability INT,
                    Loudness_dB INT,
                    Liveness INT,
                    Valence INT,
                    Length INT,
                    Acousticness INT,
                    Speechiness INT,
                    Popularity INT);
SELECT * FROM 2000s_music.music;
SELECT `Top Genre` FROM 2000s_music.music;

#which generes were popular coming through 1950s to 2000s
SELECT `Top Genre` FROM 2000s_music.music;
SELECT `Top Genre`,year,popularity
 FROM 2000s_music.music
WHERE Popularity >80
AND Year BETWEEN 1950 AND 2000;

#songs of which genre mostly saw themselves landing top 2000s
SELECT `Top Genre`, Title, Popularity
FROM 2000s_music.music
ORDER BY Popularity DESC
LIMIT 5;

#which artists were more likely to make a top song
SELECT Artist, Popularity
FROM 2000s_music.music
ORDER BY Popularity DESC
LIMIT 5;

#what is the average tempo of songs compared over the years
SELECT Year, (AVG(`Beats Per Minute (BPM)`))
FROM 2000s_music.music
GROUP BY Year
ORDER BY Year ASC;

#is there a trend of acoustic songs being popular back in the '90s vs the 2000s
SELECT COUNT(*)
FROM 2000s_music.music;
/*there is a total of 1994 songs*/
SELECT COUNT(Popularity)
FROM 2000s_music.music
WHERE Acousticness >75
AND year BETWEEN 1960 AND 2000;
SELECT COUNT(Popularity)
FROM 2000s_music.music
WHERE Acousticness >75
AND year BETWEEN 2000 AND 2022;
/*Popularity in 1960s more popular*/

#is there a trend in generes preferred back in the day vs now
SELECT COUNT(`Top Genre`)
FROM 2000s_music.music
WHERE Year BETWEEN 1950 AND 2000;