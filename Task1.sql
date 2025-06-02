/*Write a SQL query to list the top 5 players who have the highest number of goals scored. Include their name, team, goals scored, and position*/
SELECT Name, Team_name, Goals_scored, Position
FROM playertable
JOIN teamtable ON playertable.Team_id = teamtable.Team_id
ORDER BY Goals_scored DESC
LIMIT 5
