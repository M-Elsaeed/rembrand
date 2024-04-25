import os

# Retrieve environment variables
url = os.getenv('URL')
start = os.getenv('START')
end = os.getenv('END')

# debug
print(f'url: {url}, start: {start}, end: {end}')
url = "https://drive.google.com/uc?export=download&id=14ZCrRigm_7PI9u6j_QXSrNzj6AkwJiCs"
start = 1
end = 2
# end debug

# Convert start and end to integers
start = int(start) if start is not None else None
end = int(end) if end is not None else None


# import bpy

# def render_frames(filepath: str, rng: 'tuple[int, int]', output_path: str):
#     bpy.context.preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
#     bpy.context.preferences.addons['cycles'].preferences.get_devices()
#     for device in bpy.context.preferences.addons['cycles'].preferences.devices:
#         if device.type == 'OPTIX' or device.type == 'CUDA':
#             device.use = True
#     bpy.ops.wm.open_mainfile(filepath=filepath)
#     os.makedirs(output_path, exist_ok=True)
#     start, end = rng
#     for frame in range(start, end+1):
#         bpy.context.scene.frame_set(frame)
#         bpy.context.view_layer.update()
#         bpy.context.scene.render.filepath = os.path.abspath(os.path.join(output_path,
#     f'frame_{frame:04d}.exr'))
#     bpy.ops.render.render(write_still=1)

# render_frames(url, (start, end), '/tmp/output')