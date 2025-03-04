table "todos" {
  schema = schema.example_database
  column "id" {
    null           = false
    type           = int
    unsigned       = true
    auto_increment = true
  }
  column "user_id" {
    null = false
    type = int
    unsigned = true
  }

  column "text" {
    null = true
    type = varchar(100)
  }
  column "done" {
    null = true
    type = varchar(100)
  }
  primary_key {
    columns = [column.id]
  }

  foreign_key "user_id" {
    columns = [column.user_id]
    ref_columns = [table.users.column.id]
    on_update = NO_ACTION
    on_delete = NO_ACTION
  }
}

