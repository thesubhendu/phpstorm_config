DROP INDEX UNIQUE_ID ON customer_checklist
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE `license_pdf_image` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `license_id` INT (11) NOT NULL,
  `name` VARCHAR(200)  NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
)
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE `lead_score` (
  `lead_id` INT NOT NULL AUTO_INCREMENT,
  `id_customer` INT NOT NULL,
  `nurse` INT NOT NULL,
  `job` INT NOT NULL,
  `available` INT NOT NULL,
  `travel_experience` INT NOT NULL,
  `nurse_experience` INT NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` DATETIME NULL,
  PRIMARY KEY (`lead_id`)
)