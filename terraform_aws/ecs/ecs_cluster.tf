resource "aws_ecs_cluster" "tfer--Step_ECS_G4DN" {
  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "Step_ECS_G4DN"

  service_connect_defaults {
    namespace = "arn:aws:servicediscovery:eu-north-1:663539659680:namespace/ns-5duzrfnz66l3ke6y"
  }

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
