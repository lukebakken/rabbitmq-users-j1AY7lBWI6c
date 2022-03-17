FROM rabbitmq:3.9.13-management-alpine
COPY --chown=rabbitmq:rabbitmq rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY --chown=rabbitmq:rabbitmq enabled_plugins /etc/rabbitmq/enabled_plugins
COPY --chown=rabbitmq:rabbitmq definitions.json /etc/rabbitmq/definitions.json
COPY custom-docker-entrypoint.sh /usr/local/bin/custom-docker-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/custom-docker-entrypoint.sh"]
EXPOSE 4369 5672 15672 25672
CMD ["rabbitmq-server"]
