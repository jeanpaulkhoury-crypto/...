-- GAMEVERSE database schema
CREATE TABLE games (
  id INTEGER PRIMARY KEY,
  type TEXT NOT NULL CHECK(type IN ('Игра','Карта')),
  title TEXT NOT NULL,
  genre TEXT NOT NULL,
  description TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE game_tags (
  game_id INTEGER NOT NULL,
  tag TEXT NOT NULL,
  PRIMARY KEY (game_id, tag),
  FOREIGN KEY (game_id) REFERENCES games(id) ON DELETE CASCADE
);

CREATE TABLE favorites (
  user_id TEXT NOT NULL,
  game_id INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, game_id),
  FOREIGN KEY (game_id) REFERENCES games(id) ON DELETE CASCADE
);

CREATE INDEX idx_games_type ON games(type);
CREATE INDEX idx_games_genre ON games(genre);
CREATE INDEX idx_game_tags_tag ON game_tags(tag);
