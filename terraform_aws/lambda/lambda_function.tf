resource "aws_lambda_function" "tfer--ModelsController" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "ModelsController"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/ModelsController"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::663539659680:role/service-role/ModelsController-role-jud11tur"
  runtime                        = "python3.9"
  skip_destroy                   = "false"
  source_code_hash               = "swgKWxHrxc6RC21LZhi5cfnpTL6It9zSomYpd9EfiXE="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--VideoProcessor" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "VideoProcessor"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/VideoProcessor"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::663539659680:role/service-role/VideoProcessor-role-7ftlgwv8"
  runtime                        = "python3.9"
  skip_destroy                   = "false"
  source_code_hash               = "fI06ZlRH/KN6Ra3twvdRllUYaxv182Tjx0qNWNlKIhI="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--VideosController" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "VideosController"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/VideosController"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::663539659680:role/service-role/VideosController-role-efiw7fp5"
  runtime                        = "python3.9"
  skip_destroy                   = "false"
  source_code_hash               = "zQhesHRyIkuAQVez3kc+ezLdB2ZVREgqwKhN2KwcPj0="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--authorizer" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "authorizer"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/authorizer"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::663539659680:role/service-role/authorizer-role-j6sjlpji"
  runtime                        = "python3.9"
  skip_destroy                   = "false"
  source_code_hash               = "hRGUu3XpgKpcs8hG+7OB3/Lfk1hEoxqUEWcbj4/Ti9c="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--distribute_lambda_function" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "distribute_lambda_function"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/distribute_lambda_function"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::663539659680:role/service-role/distribute_lambda_function-role-nvl5yeb6"
  runtime                        = "python3.10"
  skip_destroy                   = "false"
  source_code_hash               = "ktkw8KtjSL7lJ/J2pvUcziSvDyEK36ux2BO5tcWNLmk="
  timeout                        = "300"

  tracing_config {
    mode = "PassThrough"
  }
}
