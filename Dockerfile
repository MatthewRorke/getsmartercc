FROM codeclimate/codeclimate

RUN mkdir -p /test
ADD . /test/
RUN chmod +x /test/.docker/entrypoint.sh 
RUN chmod +x /test/.docker/test.sh 
ENTRYPOINT ["/test/.docker/entrypoint.sh"]