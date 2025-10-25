# This Dockerfile installs Java and the Android SDK tools for Codespaces
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04
USER root
ARG ANDROID_SDK_TOOLS_VERSION="11076708"
ARG ANDROID_BUILD_TOOLS_VERSION="34.0.0"
ARG ANDROID_PLATFORM_VERSION="android-34"
ENV ANDROID_HOME="/opt/android/sdk"
ENV ANDROID_SDK_ROOT="${ANDROID_HOME}"
ENV PATH="${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools"
RUN apt-get update     && apt-get install -y     openjdk-17-jdk     wget     unzip     git     && apt-get clean     && rm -rf /var/lib/apt/lists/*
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools     && wget -q "https://dl.google.com/android/repository/commandlinetools-linux-${ANDROID_SDK_TOOLS_VERSION}_latest.zip" -O /tmp/cmdline-tools.zip     && unzip -q /tmp/cmdline-tools.zip -d ${ANDROID_HOME}/cmdline-tools     && mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest     && rm /tmp/cmdline-tools.zip
RUN yes | sdkmanager --licenses > /dev/null     && sdkmanager "platform-tools"     && sdkmanager "build-tools;${ANDROID_BUILD_TOOLS_VERSION}"     && sdkmanager "platforms;${ANDROID_PLATFORM_VERSION}"     && sdkmanager --update
RUN chown -R vscode:vscode ${ANDROID_HOME}
USER vscode
