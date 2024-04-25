import json
import boto3

def lambda_handler(event, context):
    # Extract inputs from the event
    url = event['url']
    start = int(event['start'])
    end = int(event['end'])
    segments = int(event['segments'])
    
    total_range = end - start
    segment_length = total_range // segments
    
    # Generate the start and end for each segment
    tasks_parameters = []    
    for i in range(segments):
        segment_start = start + i * segment_length
        segment_end = segment_start + segment_length if i < segments - 1 else end        
        tasks_parameters.append({
            'url': url,
            'start': segment_start,
            'end': segment_end
        })
    
    # Create an ECS client
    ecs_client = boto3.client('ecs')
    
    # Define the cluster and task definition
    cluster = 'your_cluster_name'
    task_definition = 'your_task_definition'
    
    # Loop through the task parameters and invoke the ECS runTask API for each segment
    for task_params in tasks_parameters:
        response = ecs_client.run_task(
            cluster=cluster,
            launchType='EC2',
            taskDefinition=task_definition,
            overrides={
                'containerOverrides': [
                    {
                        'name': 'your_container_name',
                        'environment': [
                            {'name': 'URL', 'value': task_params['url']},
                            {'name': 'START', 'value': str(task_params['start'])},
                            {'name': 'END', 'value': str(task_params['end'])}
                        ]
                    }
                ]
            }
        )
    
    return {
        'statusCode': 200,
        'body': json.dumps('ECS tasks invoked successfully.')
    }
