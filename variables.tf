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
