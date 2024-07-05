# terraform-postgres-db

## Description
Postgres-db module creates all the necessary configurations for the provided database cluster.
Depending on the input variables, this module will create multiple databases, users, schemas. For the users' privileges, each user can be granted different roles based on the input. There are only three roles to be granted for each database: Admin, Read_Write, and Read_Only.

---

## Setup/Installation

Create a virtual environment and install requirements.
```
sudo apt install snapd
sudo snap install go --classic
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
pre-commit install
```

### Requirements
 - pip

---
## Usage
- `terraform-postgres-db` needs as an input the list of databases to be initially created within the RDS cluster specified by the `provider_config` input,  along with schemas and users. Within the `schemas` input you can specify which database the schema should be created in. Also, within the `users` input you can specify the privileges each user needs to be granted on each database created.

---

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | 1.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [postgresql_database.simple](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.22.0/docs/resources/database) | resource |
| [postgresql_extension.assets_postgis](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.22.0/docs/resources/extension) | resource |
| [postgresql_grant.revoke_database](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.22.0/docs/resources/grant) | resource |
| [postgresql_schema.schemas](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.22.0/docs/resources/schema) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databases"></a> [databases](#input\_databases) | List of databases that will be created. | `list(string)` | n/a | yes |
| <a name="input_provider_config"></a> [provider\_config](#input\_provider\_config) | n/a | `map(any)` | <pre>{<br>  "connect_timeout": "22",<br>  "database": "postgres",<br>  "host": "postgres",<br>  "port": "5432",<br>  "sslmode": "disable",<br>  "superuser": false,<br>  "username": "postgres"<br>}</pre> | no |
| <a name="input_provider_pass"></a> [provider\_pass](#input\_provider\_pass) | n/a | `string` | n/a | yes |
| <a name="input_schemas"></a> [schemas](#input\_schemas) | Map of schemas to be created in a specific database. | `map(object({ database = string }))` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
