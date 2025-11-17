<<<<<<< HEAD
{{config(
    tags = 'inventory'
)}}
=======
{{config(tags ='sales')}}
>>>>>>> b56f6b3b7ed95bf7008a223cd781f50b4c3dc076
SELECT
id AS host_id,
NAME AS host_name, is_superhost, created_at, updated_at
FROM  {{source('airbnb','hosts')}}
 