variable "name" {
  type = string
}

variable "visibility" {
  type    = string
  default = "private"
}

variable "description" {
  type    = string
  default = null
}

variable "has_downloads" {
  type    = bool
  default = true
}

variable "has_issues" {
  type    = bool
  default = true
}

variable "has_wiki" {
  type    = bool
  default = false
}

variable "has_projects" {
  type    = bool
  default = true
}

variable "archived" {
  type    = bool
  default = false
}

variable "archive_on_destroy" {
  type    = bool
  default = false
}

variable "gitignore_template" {
  type = string
}

variable "users_with_read_access" {
  type    = list(string)
  default = []
}

variable "users_with_push_access" {
  type    = list(string)
  default = []
}
