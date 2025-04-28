
table "refresh_tokens" {
  schema = schema.auth
  column "id" {
    type = uuid
    primary_key = true
  }
  column "user_id" {
    type = uuid
  }
  column "refresh_token" {
    type = varchar(512)
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

  index "idx_refresh_tokens_user_id" {
    columns = ["user_id"]
  }

  foreign_key "fk_refresh_tokens_user_id" {
    columns     = ["user_id"]
    ref_columns = ["id"]
    on_delete   = CASCADE
  }
}