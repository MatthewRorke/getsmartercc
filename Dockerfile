FROM ubuntu:14.04

RUN apt install docker
RUN docker pull codeclimate/codeclimate

RUN mkdir -p /test
ADD . /test/
RUN chmod +x /test/.docker/entrypoint.sh 
ENTRYPOINT ["/test/.docker/entrypoint.sh"]