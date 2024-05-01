resource "aws_lambda_permission" "tfer--52c2c36b-ec81-46b1-940e-c762f90e6964" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:ModelsController"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/GET/models"
  statement_id  = "52c2c36b-ec81-46b1-940e-c762f90e6964"
}

resource "aws_lambda_permission" "tfer--57e4bd21-b779-49fe-85ce-b7eac901935e" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:VideoProcessor"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/POST/videos/*/process"
  statement_id  = "57e4bd21-b779-49fe-85ce-b7eac901935e"
}

resource "aws_lambda_permission" "tfer--6fd05a9c-9cdc-4264-9c6e-2c0ef1477ace" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:VideosController"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/GET/videos"
  statement_id  = "6fd05a9c-9cdc-4264-9c6e-2c0ef1477ace"
}

resource "aws_lambda_permission" "tfer--92ef4807-a2ad-475d-b946-2e77dd5001a0" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:VideosController"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/GET/videos/*"
  statement_id  = "92ef4807-a2ad-475d-b946-2e77dd5001a0"
}

resource "aws_lambda_permission" "tfer--9f904344-7f64-4d14-876d-4c4ebb31fcb2" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:ModelsController"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/GET/models"
  statement_id  = "9f904344-7f64-4d14-876d-4c4ebb31fcb2"
}

resource "aws_lambda_permission" "tfer--a966a88b-5c4d-4232-9a09-97886dd4671a" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:ModelsController"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/GET/models"
  statement_id  = "a966a88b-5c4d-4232-9a09-97886dd4671a"
}

resource "aws_lambda_permission" "tfer--e05b0448-317c-497b-abda-07d073558fb2" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:ModelsController"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/GET/models"
  statement_id  = "e05b0448-317c-497b-abda-07d073558fb2"
}

resource "aws_lambda_permission" "tfer--efe9dee1-225a-4380-84be-d819a579908b" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:VideosController"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/*/GET/videos"
  statement_id  = "efe9dee1-225a-4380-84be-d819a579908b"
}

resource "aws_lambda_permission" "tfer--fbd7d41d-9494-44fe-984d-0e9f2efbf7ec" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:authorizer"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:5rqpz1rmc2/authorizers/3nsbfp"
  statement_id  = "fbd7d41d-9494-44fe-984d-0e9f2efbf7ec"
}

resource "aws_lambda_permission" "tfer--lambda-7a34d8ea-cd62-4df1-b4b6-426add19486f" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-north-1:663539659680:function:distribute_lambda_function"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-north-1:663539659680:pluwkvd3yh/*/*/distribute_lambda_function"
  statement_id  = "lambda-7a34d8ea-cd62-4df1-b4b6-426add19486f"
}
