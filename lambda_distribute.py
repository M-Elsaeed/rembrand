import json
import uuid

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
            'start': str(segment_start),
            'end': str(segment_end),
            "job_id": job_id
        })
    
    return tasks_parameters