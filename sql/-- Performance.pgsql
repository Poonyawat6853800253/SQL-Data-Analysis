-- Check player attacking performance view
SELECT *
FROM vw_player_attacking_performance
LIMIT 10;

-- League summary ordered by total goals
SELECT *
FROM vw_league_summary
ORDER BY total_goals DESC;

-- Top 10 attacking players by goals + assists
SELECT
    "Player",
    "Squad",
    "Comp",
    "Pos",
    "Gls",
    "Ast",
    "G+A"
FROM vw_player_attacking_performance
ORDER BY "G+A" DESC
LIMIT 10;

-- Top leagues by average goals
SELECT
    "Comp",
    total_players,
    total_goals,
    avg_goals
FROM vw_league_summary
ORDER BY avg_goals DESC;