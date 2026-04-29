-- Top 10 goal scorers
SELECT 
    "Player",
    "Nation",
    "Squad",
    "Comp",
    "Pos",
    "Gls"
FROM players_data
ORDER BY "Gls" DESC
LIMIT 10;

-- Top 10 assist providers
SELECT 
    "Player",
    "Nation",
    "Squad",
    "Comp",
    "Pos",
    "Ast"
FROM players_data
ORDER BY "Ast" DESC
LIMIT 10;

-- Top 10 players by goals + assists
SELECT 
    "Player",
    "Squad",
    "Comp",
    "Pos",
    "Gls",
    "Ast",
    "G+A"
FROM players_data
ORDER BY "G+A" DESC
LIMIT 10;

-- Total players by league
SELECT 
    "Comp",
    COUNT(*) AS total_players
FROM players_data
GROUP BY "Comp"
ORDER BY total_players DESC;

-- Average goals by position
SELECT 
    "Pos",
    ROUND(AVG("Gls"), 2) AS avg_goals,
    SUM("Gls") AS total_goals,
    COUNT(*) AS total_players
FROM players_data
GROUP BY "Pos"
ORDER BY avg_goals DESC;