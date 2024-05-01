resource "aws_ecs_task_definition" "tfer--task-definition-002F-Blender_Render_And_Upload" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"663539659680.dkr.ecr.eu-north-1.amazonaws.com/mee_ecr:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/Blender_Render_And_Upload\",\"awslogs-region\":\"eu-north-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"memoryReservation\":1024,\"mountPoints\":[],\"name\":\"render_and_upload\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  execution_role_arn       = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  family                   = "Blender_Render_And_Upload"
  network_mode             = "host"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-debug_task" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"663539659680.dkr.ecr.eu-north-1.amazonaws.com/mee_ecr:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/\",\"awslogs-region\":\"eu-north-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"one_frame\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  family                   = "debug_task"
  memory                   = "512"
  network_mode             = "none"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-debug_task_2" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"663539659680.dkr.ecr.eu-north-1.amazonaws.com/mee_ecr:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/\",\"awslogs-region\":\"eu-north-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"one_frame\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  family                   = "debug_task_2"
  memory                   = "512"
  network_mode             = "host"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-mee_lightweight" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"essential\":true,\"image\":\"docker.io/nginx:1.25.5\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/mee_lightweight\",\"awslogs-region\":\"eu-north-1\",\"awslogs-stream-prefix\":\"ecs\"}},\"mountPoints\":[],\"name\":\"nginx\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"nginx-80-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  family                   = "mee_lightweight"
  memory                   = "256"
  network_mode             = "awsvpc"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-mee_nginx" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"docker.io/nginx:1.25.5\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/\",\"awslogs-region\":\"eu-north-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"nginx\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"nginx-80-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::663539659680:role/ecsTaskExecutionRole"
  family                   = "mee_nginx"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  track_latest = "false"
}
