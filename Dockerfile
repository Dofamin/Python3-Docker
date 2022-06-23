# OS
FROM ubuntu:latest
# Set version label
LABEL maintainer="github.com/Dofamin"
LABEL image="Python3"
LABEL OS="Ubuntu/latest"
# ARG & ENV
COPY container-image-root/ /
ENV TZ=Europe/Moscow
# Update system packages:
RUN apt -y update > /dev/null 2>&1;\
# Fix for select tzdata region
    ln -fs /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone > /dev/null 2>&1;\
    dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1;\
# Install dependencies, you would need common set of tools.
    apt -y install curl wget ntp logrotate cron python3 build-essential python3-pip > /dev/null 2>&1;\
# Cleanup
    apt-get clean > /dev/null 2>&1;
# CMD
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]