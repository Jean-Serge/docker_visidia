FROM debian:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openjdk-7-jdk

# Replace with your user / group id
RUN export uid=1001 gid=995 && \
    mkdir -p /home/visidia/workspace && \
    echo "visidia:x:${uid}:${gid}:Visidia,,,:/home/visidia:/bin/bash" >> /etc/passwd && \
    echo "visidia:x:${uid}:" >> /etc/group && \
    chown ${uid}:${gid} -R /home/visidia


ADD visidia.jar /home/visidia/visidia.jar
ADD visidia_api.jar /home/visidia/visidia_api.jar 

RUN chown ${uid}:${gid} -R /home/visidia/*

USER visidia
ENV HOME /home/visidia/

CMD java -jar /home/visidia/visidia.jar
