# React Native Development Environment Image

Just a simple image for dev containers for developing React Native apps

`docker pull tomathosauce/react-native-env`

## Instructions
- set the PROJECT_PATH environment variable in an .env file which will share your project with the container
- `docker compose up` to start the project container

If building with Expo and EAS, attach a shell to the container and run
- git config --global --add safe.directory /root/project
- git config --global --add safe.directory /root/project/.git

## Sources
- https://proandroiddev.com/how-to-setup-android-sdk-without-android-studio-6d60d0f2812a