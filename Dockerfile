FROM jenkins/jenkins:alpine
USER root
RUN apk add --update git nodejs npm docker python-dev libffi-dev openssl-dev gcc libc-dev make py-pip openssh-client && \
    pip install docker-compose && \
    echo -e "handlers=java.util.logging.ConsoleHandler\njenkins.level=FINEST\njava.util.logging.ConsoleHandler.level=FINEST" > /var/jenkins_home/log.properties