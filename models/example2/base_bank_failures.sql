SELECT *
FROM {{ source('duckdb_demo_original', 'bank_failures') }}