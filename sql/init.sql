DELETE FROM tenant WHERE id > 100;
DELETE FROM visit_history WHERE created_at >= '1654041600';
UPDATE id_generator SET id=2678400000 WHERE stub='a';
ALTER TABLE id_generator AUTO_INCREMENT=2678400000;

CREATE TABLE IF NOT EXISTS `rank` (
  `tenant_id` BIGINT UNSIGNED NOT NULL,
  `competition_id` VARCHAR(255) NOT NULL,
  `score` BIGINT NOT NULL,
  `player_id` VARCHAR(255) NOT NULL,
  `display_name` VARCHAR(255) NOT NULL,
  `max_row_num` BIGINT NOT NULL,
  INDEX `tenant_id_idx` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;

DELETE FROM `rank`
