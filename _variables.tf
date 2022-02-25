variable "name" {
  description = "The name of the user, e.g. the application name."
  type = string
}

variable "allow_policies" {
  description = "A map of actions and resources to grant access to."
  type = map(object({
    actions = list(string)
    resources = list(string)
  }))
  default = {}
}

variable "external_policies" {
  description = "A map of existing policies to attach to the user."
  type = map(string)
  default = {}
}
