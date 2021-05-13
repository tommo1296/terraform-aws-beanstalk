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
