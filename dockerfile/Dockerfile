FROM docker.io/jenkins/jenkins:2.383-jdk11

USER root
RUN apt-get update && apt-get install -y vim iputils-ping net-tools tzdata graphviz openssl && apt-get clean

RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli vim iputils-ping net-tools tzdata && apt-get clean
ENV TZ Asia/Tokyo


# JenkinsコンテナからホストのDockerを利用するための設定
# ls -lshn /var/run/docker.sockで確認できるGIDを定義
ENV DOCKER_GROUP_GID 999
RUN groupadd -o -g ${DOCKER_GROUP_GID} docker
RUN usermod -g docker jenkins
RUN mkdir /var/log/jenkins && chown jenkins:docker /var/log/jenkins

USER jenkins

ENV JENKINS_HOME /var/jenkins_home
ENV JAVA_OPTS="-Duser.timezone=Asia/Tokyo -Djava.util.logging.config.file=/usr/share/jenkins/ref/logging.properties"

# Jenkinsプラグインをインストール(実行時に自動ダウンロード)
#COPY plugins_extra.txt /usr/share/jenkins/ref/plugins_extra.txt
#RUN /bin/jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins_extra.txt
# Jenkinsプラグインをインストール(事前にダウンロード)
COPY *.hpi /var/jenkins_home/plugins/

COPY logging.properties /usr/share/jenkins/ref/logging.properties


