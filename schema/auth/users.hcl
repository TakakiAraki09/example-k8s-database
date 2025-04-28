table "users" {
  schema = schema.auth
  column "id" {
    type = uuid
    primary_key = true
  }
  column "name" {
    type = varchar(255)
    null = true
  }
  column "email" {
    type = varchar(255)
    unique = true
    null = true
  }
  column "email_verified" {
    type = boolean
    default = false
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
}