-- 1. Preview data
SELECT *
FROM players_data
LIMIT 10;

-- 2. Count total rows
SELECT COUNT(*) AS total_rows
FROM players_data;

-- 3. Check columns and data types
SELECT 
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'players_data'
ORDER BY ordinal_position;