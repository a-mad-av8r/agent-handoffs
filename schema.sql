PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS handoffs (
  id TEXT PRIMARY KEY,
  project TEXT NOT NULL,
  from_agent TEXT NOT NULL,
  to_agent TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending',
  priority TEXT NOT NULL DEFAULT 'medium',
  summary TEXT NOT NULL,
  next_step TEXT NOT NULL DEFAULT '',
  verify TEXT NOT NULL DEFAULT '',
  claim_agent TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  claimed_at TEXT,
  closed_at TEXT
);

CREATE TABLE IF NOT EXISTS archive_handoffs (
  id TEXT PRIMARY KEY,
  project TEXT NOT NULL,
  from_agent TEXT NOT NULL,
  to_agent TEXT NOT NULL,
  status TEXT NOT NULL,
  priority TEXT NOT NULL,
  summary TEXT NOT NULL,
  next_step TEXT NOT NULL,
  verify TEXT NOT NULL,
  claim_agent TEXT,
  created_at TEXT NOT NULL,
  claimed_at TEXT,
  closed_at TEXT,
  archived_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_handoffs_project_status
ON handoffs(project, status, to_agent);
