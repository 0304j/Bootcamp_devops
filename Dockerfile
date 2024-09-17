
FROM python:3.8-buster
MAINTAINER Arnold (tchahawandji@yahoo.com)
RUN apt update -y && apt install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y
RUN git clone https://github.com/diranetafen/student-list.git /app
WORKDIR /app/simple_api
RUN pip3 install -r /app/simple_api/requirements.txt
RUN mkdir /data
VOLUME /data
EXPOSE 5000
CMD [ "python3", "./student_age.py" ]
