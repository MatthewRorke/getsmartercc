FROM codeclimate/codeclimate

RUN mkdir -p /test
ADD . /test/
RUN chmod +x /test/.docker/entrypoint.sh 
COPY $GITHUB_WORKSPACE /code
ENTRYPOINT ["/test/.docker/entrypoint.sh"]