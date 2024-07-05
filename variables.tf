variable "provider_config" {
  type = map(any)
  default = {
    host            = "postgres"
    port            = "5432"
    database        = "postgres"
    username        = "postgres"
    sslmode         = "disable"
    connect_timeout = "22"
    superuser       = false
  }
  sensitive = true
}

variable "provider_pass" {
  type      = string
  sensitive = true
}

variable "databases" {
  description = "List of databases that will be created."
  type        = list(string)
}

variable "schemas" {
  description = "Map of schemas to be created in a specific database."
  type        = map(object({ database = string }))
  default     = {}
}
