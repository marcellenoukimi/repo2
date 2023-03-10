FROM ubuntu:18.04
RUN apt update && apt install git -y && \
    apt install wget -y && \
    apt install ansible -y && \
    apt install default-jre -y && \
    apt install default-jdk -y
RUN mkdir /s4
WORKDIR /s4
RUN mkdir /vol && touch s4marcelle.txt
COPY ./s4marcelle.txt .
ADD https://warfiles-for-docker.s3.amazonaws.com/addressbook.war .
LABEL “Email”=“marcellenoukimi@gmail.com”
LABEL “Phone Number”=“566-876-6544”
ENV “APP_NAME”="24"
ENV "CI_JOB_STAGE"="development"
ENV "TEST_VAR"="canary"
ENV "TMP_DIR"="/tmp"
VOLUME /VOL
EXPOSE 1100-1185
EXPOSE 1187-1188
EXPOSE 1190-2200
EXPOSE 80 90 160 
RUN useradd s4student -m -d /home/s4student. -s /bin/bash
COPY ./user.sh .
RUN chmod +x user.sh && bash
USER s4student
CMD [“bash”]
