# Video Subtitle Generator
This is docker image which is capable to generate subtitles for different languages.

## How to setup

1. Build the Docker Image
```bash
docker build -t subgen .
```
2. Run the Docker Container
```bash
docker run -it -v <path/of/folder/wehre/audio/is>:/app subgen
```
Now you are in the command shell of docker conatiner. You can type *ls* to show all files and folders.

3. Activate virtual env
```bash
source /opt/venv/bin/activate
```

4. To translate
```bash
whisper sample.wav --language Hindi --task translate
```
5. Finally
You can see subtitle generation is started you seen on your terminal after this process is done. You can go to your mount folder to seen *.srt*,*.vtt* files.

## Credits
This ML Model is used [WhisperAI](https://github.com/openai/whisper)

> Pull requests are always welcom :)

