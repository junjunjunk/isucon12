DROP TABLE IF EXISTS competition;
DROP TABLE IF EXISTS player;
DROP TABLE IF EXISTS player_score;

CREATE TABLE competition (
  id VARCHAR(255) NOT NULL,
  tenant_id BIGINT NOT NULL,
  title VARCHAR(100) NOT NULL,
  finished_at BIGINT NULL,
  created_at BIGINT NOT NULL,
  updated_at BIGINT NOT NULL,
  PRIMARY KEY (`tenant_id`, `id`)
);

CREATE TABLE player (
  id VARCHAR(255) NOT NULL,
  tenant_id BIGINT NOT NULL,
  display_name VARCHAR(100) NOT NULL,
  is_disqualified tinyint NOT NULL,
  created_at BIGINT NOT NULL,
  updated_at BIGINT NOT NULL,
  PRIMARY KEY (`tenant_id`, `id`)
);

CREATE TABLE player_score (
  id VARCHAR(255) NOT NULL,
  tenant_id BIGINT NOT NULL,
  player_id VARCHAR(255) NOT NULL,
  competition_id VARCHAR(255) NOT NULL,
  score BIGINT NOT NULL,
  row_num BIGINT NOT NULL,
  created_at BIGINT NOT NULL,
  updated_at BIGINT NOT NULL,
  PRIMARY KEY (`tenant_id`, `id`)
);
