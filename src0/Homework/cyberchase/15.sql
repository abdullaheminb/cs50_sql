Write a SQL query to find, for each year, the first day of the year that PBS released a Cyberchase episode.
SELECT 
    strftime('%Y', air_date) AS year,
    strftime('%m-%d', MIN(air_date)) AS earliest_release_date
FROM episodes
GROUP BY year;