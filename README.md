# Video Subtitle Generator
This Docker image generates subtitles for audio files in different languages using OpenAI's Whisper model.

## How to setup

1. **Build the Docker Image**
```bash
docker build -t subgen .
```
2. **Run the Docker Container**
```bash
docker run -it -v <path/to/audio/folder>:/app subgen
```
This mounts the folder containing your audio files to the /app directory inside the Docker container. Once inside, you can use ls to list all files and folders.

3. **Activate the Virtual Environment** - Inside the Docker container, activate the Python virtual environment by running
```bash
source /opt/venv/bin/activate
```

4. **-enerate Subtitles** - Use the Whisper model to generate subtitles. For example:
```bash
whisper sample.wav --language Hindi --task translate
```
5. **Output** - After the process completes, subtitle files like .srt and .vtt will be available in your mounted folder. Check your local directory for these files.

---
This project uses the [Whisper AI](https://github.com/openai/whisper) model developed by OpenAI. 

> Pull requests are always welcom :)

