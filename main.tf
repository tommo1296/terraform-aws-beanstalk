resource "aws_elastic_beanstalk_application" "this" {
  name          = var.application_name
  description   = var.application_description

  appversion_lifecycle {
    service_role            = var.application_service_role_arn
    delete_source_from_s3   = var.application_delete_source
  }

  tags = var.tags
}

resource "aws_elastic_beanstalk_environment" "this" {
  name                  = var.environment_name
  description           = var.environment_description
  application           = aws_elastic_beanstalk_application.this.name
  cname_prefix          = var.environment_cname_prefix

  solution_stack_name   = var.solution_stack_name

  wait_for_ready_timeout = var.environment_timeout

  tags = var.tags

  dynamic "setting" {
    for_each = var.settings

    content {
      namespace   = setting.value["namespace"]
      name        = setting.value["name"]
      value       = setting.value["value"]
    }
  }
}
