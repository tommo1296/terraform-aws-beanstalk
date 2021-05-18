variable "application_name" {
  type          = string
  description   = "Name of the application in beanstalk"
  default       = ""
}

variable "application_description" {
  type          = string
  description   = "Description of the application in beanstalk"
  default       = ""
}

variable "environment_name" {
  type          = string
  description   = "What environment dev, stage etc... Must be unique within the application"
  default       = ""
}

variable "environment_description" {
  type          = string
  description   = "Description of the environment"
  default       = ""
}

variable "application_service_role_arn" {
  type          = string
  description   = "The service role ARN with permissions to manage beanstalk resources"
  default       = ""
}

variable "application_delete_source" {
  type          = bool
  description   = "Whether to delete a version source bundle from S3 when the app is deleted"
  default       = true
}

variable "tags" {
  type          = map(string)
  description   = "Application specific tags"
  default       = {}
}

variable "environment_cname_prefix" {
  type          = string
  description   = "Add a custom cname for the app"
  default       = ""
}

variable "solution_stack_name" {
  type          = string
  description   = "Stack solutin name (See Beanstalk supported platforms documentation)"
  default       = ""
}

variable "environment_timeout" {
  type          = string
  description   = "Time terraform waits for environment to start"
  default       = "20m"
}

variable "settings" {
  type          = list(map(string))
  description   = "List of maps for the configuration options"
  default       = []
}
