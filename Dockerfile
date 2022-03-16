FROM rabbitmq:3.9.13-management-alpine
COPY --chown=rabbitmq:rabbitmq rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY --chown=rabbitmq:rabbitmq enabled_plugins /etc/rabbitmq/enabled_plugins
COPY --chown=rabbitmq:rabbitmq definitions.json /etc/rabbitmq/definitions.json
EXPOSE 15672
