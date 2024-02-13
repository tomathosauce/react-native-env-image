FROM node:lts-bookworm

# Steps based on https://proandroiddev.com/how-to-setup-android-sdk-without-android-studio-6d60d0f2812a

RUN apt update
RUN apt install unzip

WORKDIR /root

RUN wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
RUN mkdir android
RUN unzip commandlinetools-linux-11076708_latest.zip
RUN mkdir android/cmdline-tools
RUN mkdir android/cmdline-tools/tools
RUN mv cmdline-tools/* android/cmdline-tools/tools
RUN rmdir cmdline-tools
RUN rm commandlinetools-linux-11076708_latest.zip

RUN apt install openjdk-17-jdk -y

COPY .bashrc /root/.bashrc
SHELL ["/bin/bash", "-c"]

WORKDIR /root/android
RUN  source /root/.bashrc && echo yes | sdkmanager --install "platform-tools" "platforms;android-34" "build-tools;34.0.0"
