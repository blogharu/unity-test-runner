ARG GAME_CI_UNITY_EDITOR_IMAGE

FROM $GAME_CI_UNITY_EDITOR_IMAGE

RUN apt-get update && \
    apt-get install -y \
        libegl1 \
        libvulkan1 \
        vulkan-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


ENV XDG_RUNTIME_DIR=/tmp/runtime
RUN mkdir -p /tmp/runtime && chmod 700 /tmp/runtime
RUN groupadd -g 992 render && \
    usermod -aG render root