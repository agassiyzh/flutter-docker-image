FROM cirrusci/android-sdk:tools

ENV ANDROID_PLATFORM_VERSION 30
ENV ANDROID_BUILD_TOOLS_VERSION 30.0.0

RUN yes | sdkmanager \
    "platforms;android-$ANDROID_PLATFORM_VERSION" \
    "build-tools;$ANDROID_BUILD_TOOLS_VERSION" \
    && yes | sdkmanager \
    "platforms;android-28" \
    "build-tools;28.0.3" \
    && yes | sdkmanager \
    "platforms;android-29" \
    "build-tools;29.0.2" \
