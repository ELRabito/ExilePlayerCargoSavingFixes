-- Fix backpack column
UPDATE player
SET backpack = JSON_ARRAY(
    TRIM(BOTH '"' FROM backpack),
    JSON_ARRAY()
)
WHERE backpack IS NOT NULL;