table "todos" {
  schema = schema.example_database
  column "id" {
    null           = false
    type           = int
    unsigned       = true
    auto_increment = true
  }
  column "title" {
    null = true
    type = varchar(100)
  }
  column "description" {
    null = true
    type = varchar(100)
  }
  column "state" {
    type = varchar(100)
    default = "OK"
  }
  primary_key {
    columns = [column.id]
  }
}
