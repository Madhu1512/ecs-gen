FROM alpine

WORKDIR /root

RUN apk update && apk add ca-certificates openssl && update-ca-certificates

# download release of ecs-gen
ENV ECS_GEN_RELEASE 0.4.0-custom
RUN wget -q https://github.com/madhu1512/ecs-gen/releases/download/$ECS_GEN_RELEASE/ecs-gen-linux-amd64.zip && unzip ecs-gen-linux-amd64.zip && cp ecs-gen-linux-amd64 /usr/local/bin/ecs-gen

CMD ["ecs-gen"]
