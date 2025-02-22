-- Summary analytics (MIN, MAX, AVG, GROUP BY)
select * from movies;

-- Count, -- Max , --Min, --Avg

select Max(imdb_rating) as max_rating,
Min(imdb_rating) as min_ration,
round(Avg(imdb_rating),2) as avg_rating
from movies where studio = "marvel studios";

select count(*) from movies where movie_id;

# 1.How many movies were released between 2015 and 2022
select count(*) as release_count from movies 
where release_year between 2015 and 2022;

# 2.Print the max and min movie release year
select Min(release_year)as MinReleaseYear,
Max(release_year) as MinReleaseYear from movies;
 
# 3.Print a year and how many movies were released in that year starting with the latest year.
select release_year, count(*) as movies_count 
from movies group by release_year order by release_year desc;
