/*Write a SQL query to identify the top 3 players who provide the best value for money. "Value for money" is defined as the number of goals scored per unit of salary (goals/salary). Show player name, team name, goals, salary, and their calculated value-for-money ratio*/
SELECT Name, Team_name, Goals_scored, Salary, 
(Goals_scored / NULLIF(Salary, 0)) AS Value_for_money
FROM playertable
JOIN teamtable ON playertable.team_id = teamtable.team_id
ORDER BY Value_for_money DESC
LIMIT 3;
