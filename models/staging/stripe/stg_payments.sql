with order_payments as (
    select
        orderid,
        sum(case when status = 'success' then amount end) as amount
    from raw.stripe.payment
    group by 1
)

select * from order_payments