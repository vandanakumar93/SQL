# SQL Sports Analytics Project

This repository contains SQL queries for analyzing sports data — specifically player and team performance metrics.

## Files

### 🏅 Task1.sql – Top 5 Goal Scorers
This SQL script returns the top 5 players who have scored the most goals.

**Details:**
- Joins `playertable` and `teamtable` on `Team_id`
- Displays `Name`, `Team_name`, `Goals_scored`, and `Position`
- Orders by `Goals_scored` in descending order
- Limits the result to the top 5 players

```sql
SELECT Name, Team_name, Goals_scored, Position
FROM playertable
JOIN teamtable ON playertable.Team_id = teamtable.Team_id
ORDER BY Goals_scored DESC
LIMIT 5;

