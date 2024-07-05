terraform {
  backend "local" {}
}

module "postgres" {
  source = "../"

  provider_config = {
    host            = "postgres"
    port            = "5432"
    database        = "postgres"
    username        = "postgres"
    sslmode         = "disable"
    connect_timeout = "22"
    superuser       = false
  }
  provider_pass = "letmein"
}
