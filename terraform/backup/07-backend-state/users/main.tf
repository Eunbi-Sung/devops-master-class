terraform {
    backend "s3" {
        bucket = "ebsung-backend-state"
        key = "dev/backend-state"
        region = "ap-northeast-2"
        dynamodb_table = "dev_application_locks"
        encrypt = true
    }
}

provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_iam_user" "my_iam_user" {
    name = "${terraform.workspace}_my_iam_user_abc"
}
