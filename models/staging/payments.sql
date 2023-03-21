-- CTE (Common table expression)
{{ config(materialized='view') }}

with src_payments as 
(
select * 
from workshop.public.payments
)

select 
    ps.user_id,
    ps.city,
    ps.race,
    ps.country,
    ps.currency,
    ps.credit_card_type,
    ps.subscription_price
from src_payments as ps