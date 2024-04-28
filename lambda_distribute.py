import boto3
import json
import uuid
import time

def lambda_handler(event, context):
    print(event)
    if "body" in event:
        event["body"] = json.loads(event["body"])
    url = event['body']['blender_url'] if 'body' in event else event['blender_url']
    start = int(event['body']['blender_start']) if 'body' in event else int(event['blender_start'])
    end = int(event['body']['blender_end']) if 'body' in event else int(event['blender_end'])
    segments = int(event['body']['blender_segments']) if 'body' in event else int(event['blender_segments'])
    job_id = str(uuid.uuid4())
    
    total_range = end - start
    segment_length = total_range // segments
    
    tasks_parameters = []    
    for i in range(segments):
        segment_start = start + i * segment_length
        segment_end = segment_start + segment_length if i < segments - 1 else end        
        tasks_parameters.append({
            'url': url,
            'start': segment_start,
            'end': segment_end,
            "job_id": job_id
        })

    print(tasks_parameters)

    ecs_client = boto3.client('ecs')
    
    cluster = 'arn:aws:ecs:eu-north-1:663539659680:cluster/ECS_Rendering_Cluster'
    task_definition = 'arn:aws:ecs:eu-north-1:663539659680:task-definition/Blender_Render_And_Upload:3'

    for task_params in tasks_parameters:
        retries = 0
        while retries < 5:
            response = ecs_client.run_task(
                cluster=cluster,
                launchType='EC2',
                taskDefinition=task_definition,
                overrides={
                    'containerOverrides': [
                        {
                            'name': "render_and_upload",
                            'environment': [
                                {'name': 'URL', 'value': task_params['url']},
                                {'name': 'START', 'value': str(task_params['start'])},
                                {'name': 'END', 'value': str(task_params['end'])},
                                {'name': 'JOB_ID', 'value': task_params['job_id']}
                            ]
                        }
                    ]
                }
                )

            print(task_params['start'])
            print(len(response['failures']))
            print(response)
            if len(response['failures']) == 0:
                retries += 10
            else:
                time.sleep(5)
                retries += 1
    
    return {
        'statusCode': 200,
        'body': json.dumps(f'ECS tasks invoked successfully. job_id: { job_id}')
    }

# Test the lambda function
# lambda_handler({"body":{
#     'blender_url': 'https://drive.google.com/uc?export=download&id=14ZCrRigm_7PI9u6j_QXSrNzj6AkwJiCs',
#     'blender_start': 60,
#     'blender_end': 70,
#     'blender_segments': 5
# }}, None)