table "auth_providers" {
  schema = schema.auth
  column "id" {
    type = uuid
    primary_key = true
  }
  column "user_id" {
    type = uuid
  }
  column "provider" {
    type = enum(
      "password",
      "google",
      // "twitter",
      // "apple",
      "github"
    )
  }
  column "provider_user_id" {
    type = varchar(255)
  }
  column "hashed_password" {
    type = varchar(255)
    null = true
  }
  column "created_at" {
    type = timestamp
    default = now()
  }
  column "updated_at" {
    type = timestamp
    default = now()
    on_update = now()
  }

  index "idx_auth_providers_user_id" {
    columns = ["user_id"]
  }

  foreign_key "fk_auth_providers_user_id" {
    columns     = ["user_id"]
    ref_columns = ["id"]
    on_delete   = CASCADE
  }
}