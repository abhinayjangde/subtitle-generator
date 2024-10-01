# Use the latest Ubuntu image
FROM ubuntu:latest

# Install system dependencies
RUN apt update && \
    apt install -y ffmpeg python3 python3-pip python3-venv

# Create a directory for the application
WORKDIR /app

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Activate the virtual environment and install the required Python packages
RUN /opt/venv/bin/pip install --upgrade pip setuptools && \
    /opt/venv/bin/pip install openai-whisper setuptools-rust

# Set the virtual environment's Python as the default
ENV PATH="/opt/venv/bin:$PATH"

# Set entry point to bash for interactive use or customize as needed
ENTRYPOINT ["bash"]
