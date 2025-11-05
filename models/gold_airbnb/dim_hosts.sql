SELECT
    host_id,
    NVL( host_name, 'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM  DEV.SILVER_AIRBNB.SILVER_HOSTS