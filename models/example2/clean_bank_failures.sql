SELECT
    c1,
    State AS state,
    Date AS date,
    "Assets ($mil.)" AS assets_mil
FROM {{ ref('base_bank_failures') }}