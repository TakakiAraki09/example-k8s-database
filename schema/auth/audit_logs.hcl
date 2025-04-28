table "audit_logs" {
  schema = schema.auth

  column "id" {
    type = uuid
    primary_key = true
  }

  column "user_id" {
    type = uuid
    null = true # 未認証状態でもログ記録したい場合
  }

  column "action" {
    type = enum(
      "login_success",
      "login_failure",
      "logout",
      "password_reset",
      "account_update",
      "mfa_enabled",
      "mfa_disabled",
      "role_change",
      "resource_create",
      "resource_update",
      "resource_delete",
      "admin_action"
    )
  }

  column "resource_type" {
    type = varchar(255)
    null = true
  }

  column "resource_id" {
    type = varchar(255)
    null = true
  }

  column "ip_address" {
    type = varchar(45)
    null = true
  }

  column "user_agent" {
    type = varchar(512)
    null = true
  }

  column "metadata" {
    type = json
    null = true
    # 追加情報（例: 変更前後のデータ、エラー内容など）
  }

  column "created_at" {
    type = timestamp
    default = now()
  }

  index "idx_audit_logs_user_id_created_at" {
    columns = ["user_id", "created_at"]
  }
}