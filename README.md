# repository-create

Module used for creating GitHub repositories.

## Requirements

| Name                                                             | Version |
|------------------------------------------------------------------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0  |

## Providers

| Name                                                       | Version |
|------------------------------------------------------------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                   | Type     |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [github_branch_protection.default_branch_protection](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection)              | resource |
| [github_repository.repository](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository)                                           | resource |
| [github_repository_collaborator.read_access_collaborators](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_collaborator)  | resource |
| [github_repository_collaborator.write_access_collaborators](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_collaborator) | resource |

## Inputs

| Name                                                                                                       | Description | Type           | Default     | Required |
|------------------------------------------------------------------------------------------------------------|-------------|----------------|-------------|:--------:|
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy)               | n/a         | `bool`         | `false`     |    no    |
| <a name="input_archived"></a> [archived](#input\_archived)                                                 | n/a         | `bool`         | `false`     |    no    |
| <a name="input_description"></a> [description](#input\_description)                                        | n/a         | `string`       | `null`      |    no    |
| <a name="input_gitignore_template"></a> [gitignore\_template](#input\_gitignore\_template)                 | n/a         | `string`       | n/a         |   yes    |
| <a name="input_has_downloads"></a> [has\_downloads](#input\_has\_downloads)                                | n/a         | `bool`         | `true`      |    no    |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues)                                         | n/a         | `bool`         | `true`      |    no    |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects)                                   | n/a         | `bool`         | `true`      |    no    |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki)                                               | n/a         | `bool`         | `false`     |    no    |
| <a name="input_name"></a> [name](#input\_name)                                                             | n/a         | `string`       | n/a         |   yes    |
| <a name="input_users_with_push_access"></a> [users\_with\_push\_access](#input\_users\_with\_push\_access) | n/a         | `list(string)` | `[]`        |    no    |
| <a name="input_users_with_read_access"></a> [users\_with\_read\_access](#input\_users\_with\_read\_access) | n/a         | `list(string)` | `[]`        |    no    |
| <a name="input_visibility"></a> [visibility](#input\_visibility)                                           | n/a         | `string`       | `"private"` |    no    |

## Outputs

No outputs.
