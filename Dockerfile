FROM openjdk:17-jdk-slim-bullseye

RUN apt-get update && apt-get install wget -y

WORKDIR /usr/bin

RUN wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
RUN wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.7.0.jar -O apktool.jar
RUN chmod +x apktool*

WORKDIR /workspace

ENTRYPOINT [ "/usr/bin/apktool" ]