table "login_histories" {
  schema = schema.auth

  column "id" {
    type = uuid
    primary_key = true
  }

  column "user_id" {
    type = uuid
    null = false
  }

  column "timestamp" {
    type = timestamp
    default = now()
  }

  column "success" {
    type = boolean
    null = false
  }

  column "failure_reason" {
    type = enum(
      "wrong_password",
      "account_locked",
      "account_disabled",
      "two_factor_failed",
      "social_login_failed",
      "server_error"
    )
    null = true
  }

  column "ip_address" {
    type = varchar(45) # IPv6対応
    null = true
  }

  column "user_agent" {
    type = varchar(512)
    null = true
  }

  column "location" {
    type = varchar(255)
    null = true # IPジオロケーション取得して保存するなら
  }

  column "created_at" {
    type = timestamp
    default = now()
  }

  index "idx_login_histories_user_id_timestamp" {
    columns = ["user_id", "timestamp"]
  }

  foreign_key "fk_login_histories_user_id" {
    columns     = ["user_id"]
    ref_columns = ["id"]
    on_delete   = CASCADE
  }
}
