table "example_table" {
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
  column "hoge" {
    null = true
    type = varchar(100)
  }
  primary_key {
    columns = [column.id]
  }
}
schema "example_database" {
  charset = "utf8mb4"
  collate = "utf8mb4_0900_ai_ci"
}
