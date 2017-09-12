ALTER TABLE `job_verified`
  ALTER `unverified_id` DROP DEFAULT
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE `job_verified`
  CHANGE COLUMN `unverified_id` `unverified_id` VARCHAR(100) NULL AFTER `filename`
;-- -. . -..- - / . -. - .-. -.--
update users set password='$2y$10$hf/41uG2b8RhSkBzzrgwN.tcDTXzAlXpW.1NY.9PRXjEZrwRNNJXq'
;-- -. . -..- - / . -. - .-. -.--
)
;-- -. . -..- - / . -. - .-. -.--
select DISTINCT id_customer from status_history where id_customer IN (62,1507)
;-- -. . -..- - / . -. - .-. -.--
select DISTINCT id_customer from status_history where id_customer IN (62,1507) and status='lead'
;-- -. . -..- - / . -. - .-. -.--
select DISTINCT id_customer from status_history where id_customer IN (6111,6110) and status='Lead'
;-- -. . -..- - / . -. - .-. -.--
select processing_status from customer where processing_status='lead'
;-- -. . -..- - / . -. - .-. -.--
select processing_status,count(id_customer) from customer where processing_status='lead'
;-- -. . -..- - / . -. - .-. -.--
select count(processing_status) from customer where processing_status='lead'
;-- -. . -..- - / . -. - .-. -.--
select count(processing_status) from customer where processing_status='applicant'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer where processing_status='applicant'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer where processing_status='lead'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer where processing_status='lead' AND start_date>'2017-05-31'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer where processing_status='lead' AND created_at>='2017-05-31'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer where processing_status='lead' AND created_at BETWEEN  '2015-05-31' and '2017-08-29'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer where processing_status='lead' AND created_at BETWEEN  '2017-05-31' and '2017-08-29'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer
LEFT JOIN utm_tracking ON customer.id_customer=utm_tracking.customer_id
where processing_status='lead'
      AND source IN  ('IN-Landing', 'PKG-Landing','Social-FB')
      AND created_at BETWEEN  '2017-05-31' and '2017-08-29'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer as cu
LEFT JOIN utm_tracking as utm ON customer.id_customer=utm_tracking.customer_id
where cu.processing_status='lead'
      AND cu.source IN  ('IN-Landing', 'PKG-Landing','Social-FB')
      AND cu.created_at BETWEEN  '2017-05-31' and '2017-08-29'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer as cu
LEFT JOIN utm_tracking as utm ON cu.id_customer=utm.customer_id
where cu.processing_status='lead'
      AND cu.source IN  ('IN-Landing', 'PKG-Landing','Social-FB')
      AND cu.created_at BETWEEN  '2017-05-31' and '2017-08-29'
;-- -. . -..- - / . -. - .-. -.--
select count(id_customer) from customer as cu
LEFT JOIN utm_tracking as utm ON cu.id_customer=utm.customer_id
where cu.processing_status='lead'
      AND cu.source IN  ('IN-Landing', 'PKG-Landing','Social-FB')
      AND utm.utm_source not in ('facebook','google')
      AND cu.created_at BETWEEN  '2017-05-31' and '2017-08-29'