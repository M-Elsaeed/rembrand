# Use Ubuntu as the base image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Python 3.10 and pip
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.10 python3.10-distutils && \
    apt-get install -y python3-pip && \
    python3.10 -m pip install --upgrade pip

# Install bpy
RUN python3.10 -m pip install bpy==4.0.0
RUN python3.10 -m pip install boto3
RUN apt-get update && apt-get install -y blender
RUN apt-get update && apt-get install -y xorg


# Copy the Python script into the container
COPY . .

# Run the Python script
CMD ["python3.10", "./task_conumer.py"]