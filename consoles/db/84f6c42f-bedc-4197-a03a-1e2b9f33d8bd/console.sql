select count(id_customer) from customer as cu
LEFT JOIN utm_tracking as utm ON cu.id_customer=utm.customer_id
where cu.processing_status='lead'
      AND cu.source IN  ('IN-Landing', 'PKG-Landing','Social-FB')
      AND utm.utm_source not in ('facebook','google')
      AND cu.created_at BETWEEN  '2017-05-31' and '2017-08-29';