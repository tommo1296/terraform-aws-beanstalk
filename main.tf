resource "aws_elastic_beanstalk_application" "this" {
  name          = var.application_name
  description   = var.application_description

  appversion_lifecycle {
    service_role            = var.application_service_role_arn
    delete_source_from_s3   = var.application_delete_source
  }

  tags = var.tags
}
