ARG STRIMZI_KAFKA_TAG="0.43.0-kafka-3.8.0"

FROM quay.io/strimzi/kafka:${STRIMZI_KAFKA_TAG}

USER root

RUN mkdir -p /opt/kafka/plugins


# ActiveMq Kafka Connector
COPY confluentinc-kafka-connect-activemq-12.2.7 /opt/kafka/plugins/confluentinc-kafka-connect-activemq-12.2.7

# http-compressed-source.connector
COPY compressed-source-connector /opt/kafka/plugins/compressed-source-connector