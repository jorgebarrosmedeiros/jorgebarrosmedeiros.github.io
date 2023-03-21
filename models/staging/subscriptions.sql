-- CTE (Common table expression)
{{ config(materialized='view') }}

with src_subscription as 
(
select * 
from workshop.public.subscriptipn
)

select 
    sb.user_id,
    sb.plan,
    sb.status,
    sb.payment_term,
    sb.payment_method,
    sb.subscription_term
from src_subscription as sb