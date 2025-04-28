table "sessions" {
  schema = schema.auth
  column "id" {
    type = uuid
    primary_key = true
  }
  column "user_id" {
    type = uuid
  }
  column "session_token" {
    type = varchar(512)
  }
  column "user_agent" {
    type = varchar(512)
    null = true
  }
  column "ip_address" {
    type = varchar(45)
    null = true
  }
  column "expires_at" {
    type = timestamp
  }
  column "revoked_at" {
    type = timestamp
    null = true
  }
  column "created_at" {
    type = timestamp
    default = now()
  }

  index "idx_sessions_user_id" {
    columns = ["user_id"]
  }

  foreign_key "fk_sessions_user_id" {
    columns     = ["user_id"]
    ref_columns = ["id"]
    on_delete   = CASCADE
  }
}