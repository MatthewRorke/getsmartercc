FROM codeclimate/codeclimate

RUN mkdir -p /test
ADD . /test/
RUN ls -la
RUN chmod +x /test/.docker/entrypoint.sh 
ENTRYPOINT ["/test/.docker/entrypoint.sh"]