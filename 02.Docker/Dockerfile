#FROM
#this base image will pull the latest version by default
FROM python
#this base image with tag and it's an offical image
FROM ubuntu:18.4
#this base image is an unoffical
FROM reema828/pyflask:v1.0
#this base image by it's digest (it's more accurate if changes to this layer happen)
FROM python@sha256:97fc9ec41404bf3b8395f559c4fa381e20fa303f1fb56877c073f9af9e05507f
#this base image is not the default registry
FROM mcr.microsoft.com/mssql/server:2019-latest

#######
#WORKDIR
#this does mkdir(if it doesn't exit) then cd
WORKDIR /app
#if i didn't give the absolute path in one line so i can do this, the working directory will be /app/subdir
WORKDIR subdir

#######
#COPY
#copy command will always copy from "build context"
COPY file.py /app/file.py
#coping multiple files at once
COPY file.py /code/file1.py /app/
#coping everything in the directory
COPY . /app/
#coping a file with spaces
COPY ["name with spaces", "/app/"]

#######
#ADD
#copy files that does not exist in the build context, either downloading or an archieve
ADD <URL> /app/
ADD <ARCHIEVE> /app/

#######
#SHELL
#the default shell is sh to change it use SHELL  
SHELL [ "/bin/bash" , "-c" ]
#it can be python
SHELL [ "/usr/local/bin/python","-c" ]

######
#RUN
#run in the buildtime
#run command must be a one liner, it will not expect an input
RUN <command> <arg1> <arg2>
#OR
RUN ["command", "arg1" , "arg2"]
RUN echo "this is a line" > /tmp/file
RUN echo "this is another line" >> /tmp/file
RUN cat /tmp/file
RUN find / -name "python"
RUN pip install flask
RUN apt update && apt update -y


######
#metadata after build time
#ENV
ENV <key> <value>
ENV SQL_SA_ACCOUNT "SA"
ENV SQL_SA_ACCOUNT=SA SQL_SA_PASSWORD="pass"
ENV PATH $PATH:/app
ENV PATH="usr/loca/hadoop/bin:${PATH}"
ENV EMPTY ""

#######
#USER to change from the root user
RUN groupadd newuser && useradd -g newuser reema 
#this so su -u <user>
USER reema
RUN id

######
#ENTRYPOINT 
#first command executed
ENTRYPOINT [ "/bin/bash" , "-c" ]

#######
#cmd
CMD [ "<args of ENTRYPOINT" ]

######
#label will be shown in the inspect of image
LABEL <ANYTHING>=<"value">

######
#arg
#these arguments are within the dockerfile only
ARG base_image=python

