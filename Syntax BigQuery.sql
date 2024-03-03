# Syntax-BigQuery-KimiaFarma

CREATE TABLE dataset_kimiafarma.kf_analisis AS
SELECT ft.transaction_id, ft.date, ft.branch_id, kc.branch_name, kc.kota, kc.provinsi, kc.rating as rating_cabang, ft.customer_name, ft.product_id, p.product_name, ft.price as actual_price, ft.discount_percentage, 

CASE
WHEN ft.price <= 50000 THEN 0.1
WHEN ft.price > 50000 AND ft.price <= 100000 THEN 0.15
WHEN ft.price > 100000 AND ft.price <= 300000 THEN 0.2
WHEN ft.price > 300000 AND ft.price <= 500000 THEN 0.25
WHEN ft.price > 500000 THEN 0.3
    END AS persentase_gross_laba,

ft.price * ft.discount_percentage as nett_sales,

CASE
WHEN ft.price <= 50000 THEN 0.1 * ft.price
WHEN ft.price > 50000 AND ft.price <= 100000 THEN 0.15 * ft.price
WHEN ft.price > 100000 AND ft.price <= 300000 THEN 0.2 * ft.price
WHEN ft.price > 300000 AND ft.price <= 500000 THEN 0.25 * ft.price
WHEN ft.price > 500000 THEN 0.3 * ft.price
    END AS nett_profit,

ft.rating as rating_transaksi

FROM dataset_kimiafarma.kf_final_transaction as ft

LEFT JOIN dataset_kimiafarma.kf_kantor_cabang as kc
  ON ft.branch_id = kc.branch_id

LEFT JOIN dataset_kimiafarma.kf_product as p
  ON ft.product_id = p.product_id;
