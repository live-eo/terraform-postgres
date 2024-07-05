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

  databases = [
    "db1",
    "db2",
    "db3",
  ]
  schemas = {
    schema1 = {
      database = "db1"
    }
    schema2 = {
      database = "db2"
    }
  }
}
