terraform {
  backend "s3" {
    bucket = "common-s3-bucket-tfstate"
    key    = "sandbox/laravel/prod/log/app_foobar_v1.0.0.tstate"
    region = "ap-northeast-1"
  }
}