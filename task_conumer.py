import os
import urllib.request
import bpy
import boto3

# i know this is bad practice. I will fix it later
s3 = boto3.client('s3', aws_access_key_id='my_key_only_at_build_time', aws_secret_access_key='my_secret_only_at_build_time')

# Retrieve environment variables
job_id = os.getenv('JOB_ID')
url = os.getenv('URL')
start = os.getenv('START')
start = int(start) if start is not None else 1
end = os.getenv('END')
end = int(end) if end is not None else 2

print(f'job_id: {job_id}, url: {url}, start: {start}, end: {end}')

# # debug
# print(f'url: {url}, start: {start}, end: {end}')
# url = "https://drive.google.com/uc?export=download&id=14ZCrRigm_7PI9u6j_QXSrNzj6AkwJiCs"
# start = 1
# end = 2
# # end debug

def render_frames(filepath: str, rng: 'tuple[int, int]', output_path: str):
    bpy.context.preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
    bpy.context.preferences.addons['cycles'].preferences.get_devices()
    for device in bpy.context.preferences.addons['cycles'].preferences.devices:
        if device.type == 'OPTIX' or device.type == 'CUDA':
            device.use = True
    bpy.ops.wm.open_mainfile(filepath=filepath)
    os.makedirs(output_path, exist_ok=True)
    start, end = rng
    for frame in range(start, end+1):
        bpy.context.scene.frame_set(frame)
        bpy.context.view_layer.update()
        frame_file_path = os.path.abspath(os.path.join(output_path, f'frame_{frame:04d}.exr'))
        bpy.context.scene.render.filepath = frame_file_path
        bpy.ops.render.render(write_still=1)
        with open(frame_file_path, "rb") as f:
            s3.upload_fileobj(f, "mees3", f'{job_id}/frame_{frame:04d}.exr')

file_path = "./tmp.blend"
urllib.request.urlretrieve(url, file_path)
render_frames(file_path, (start, end), './output')