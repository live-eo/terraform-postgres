resource "postgresql_schema" "schemas" {
  for_each = var.schemas
  name     = each.key
  database = postgresql_database.simple[each.value.database].name
}
