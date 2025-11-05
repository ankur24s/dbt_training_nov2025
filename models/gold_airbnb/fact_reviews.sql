{{config(
    materialized = 'incremental', 
    incremental_strategy="append"
    )}}

select * from  {{ref('silver_reviews')}}
{% if is_incremental() %}
where review_date > (select max(review_date) from {{this}})
{% endif %}