    select
        orderid as order_id,
        {{ cents_to_dollars('amount') }} as dollar_amount

    from {{source('stripe','payment')}}