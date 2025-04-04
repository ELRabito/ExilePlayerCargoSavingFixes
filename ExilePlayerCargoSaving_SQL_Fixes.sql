-- Fix backpack column
UPDATE player
SET backpack = JSON_ARRAY(
    TRIM(BOTH '"' FROM backpack),
    JSON_ARRAY()
)
WHERE backpack IS NOT NULL;

-- If the tope one doesn't work use this query. 
-- Fix backpack column (MySQL 5.7 version)
UPDATE player
SET backpack = CONCAT(
    '["',
    TRIM(BOTH '"' FROM backpack),
    '", []]'
)
WHERE backpack IS NOT NULL;
