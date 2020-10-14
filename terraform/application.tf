
resource "aws_elastic_beanstalk_application" "bdtest" {
  name        = "bdpts-tony-app"
  description = "bdpts interview deployment"

  appversion_lifecycle {
   service_role          = "arn:aws:iam::996014310714:role/beans"
   max_count             = 128
   delete_source_from_s3 = true
 }
}




resource "aws_elastic_beanstalk_application_version" "default" {
  name        = "bdpts-test"
  application = "bdpts-tony-app"
  description = "bdpts demo app terraform"
  bucket      = "bdpts-deploy"
  key         = "aws_deploy.zip"
}
