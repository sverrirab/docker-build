FROM sverrirab/debian

RUN apt-get update && \
    apt-get install -y --force-yes --no-install-recommends \
        file                    \
        jq                      \
        dbus                    \
        build-essential         \
        openjdk-7-jdk           \
        python-dev              \
        python-pip              \
        python-wheel

ENV JAVA_TOOL_OPTIONS "-Dfile.encoding=UTF8"

ENV PYTHONIOENCODING "UTF-8"

RUN mkdir /build

WORKDIR /build
