# https://aws.amazon.com/blogs/developer/aws-cli-v2-docker-image/
# https://hub.docker.com/r/amazon/aws-cli
FROM amazon/aws-cli:2.4.23

WORKDIR /
ADD ./ /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
