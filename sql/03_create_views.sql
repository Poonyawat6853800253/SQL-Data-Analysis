-- View: player attacking performance
CREATE OR REPLACE VIEW vw_player_attacking_performance AS
SELECT
    "Player",
    "Nation",
    "Squad",
    "Comp",
    "Pos",
    "Age",
    "MP",
    "Starts",
    "Gls",
    "Ast",
    "G+A",
    "G-PK",
    "PK",
    "PKatt",
    "CrdY",
    "CrdR"
FROM players_data;

-- View: league summary
CREATE OR REPLACE VIEW vw_league_summary AS
SELECT
    "Comp",
    COUNT(*) AS total_players,
    SUM("Gls") AS total_goals,
    SUM("Ast") AS total_assists,
    ROUND(AVG("Gls"), 2) AS avg_goals,
    ROUND(AVG("Ast"), 2) AS avg_assists
FROM players_data
GROUP BY "Comp";